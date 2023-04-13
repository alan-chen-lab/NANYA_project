package main

import (
	"fmt"
	"image"
	"io/ioutil"
	"net/http"
	"os"
	"os/exec"
	"strings"
	"sync"
	"time"

	"github.com/gorilla/mux"
	"github.com/rs/cors"
	"gocv.io/x/gocv"
)

var controlProc *exec.Cmd = nil
var buildMapProc *exec.Cmd = nil
var navigationProc *exec.Cmd = nil

var (
	err      error
	webcam   *gocv.VideoCapture
	frame_id int
)

var buffer = make(map[int][]byte)
var frame []byte
var mutex = &sync.Mutex{}

func main() {
	webcam, err = gocv.VideoCaptureDevice(1)
	go getframes()
	router := mux.NewRouter()
	router.HandleFunc("/startControl", func(w http.ResponseWriter, r *http.Request) {
		if controlProc == nil {
			cmd := exec.Command("bash", "close_roscore.bash")
			err := cmd.Run()
			time.Sleep(time.Second)
			controlProc = exec.Command("bash", "ros_control.bash")
			err = controlProc.Start()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("start running on %d", controlProc.Process.Pid)))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("已開啟操控"))
		}
	})
	router.HandleFunc("/stopControl", func(w http.ResponseWriter, r *http.Request) {
		if controlProc != nil {
			controlProc.Process.Kill()
			cmd := exec.Command("bash", "close_roscore.bash")
			err := cmd.Run()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("stop running on %d", controlProc.Process.Pid)))
				controlProc = nil
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("已關閉操控"))
		}
	})
	router.HandleFunc("/startControlLaser", func(w http.ResponseWriter, r *http.Request) {
		if buildMapProc == nil {
			cmd := exec.Command("bash", "close_roscore.bash")
			err := cmd.Run()
			time.Sleep(time.Second)
			buildMapProc = exec.Command("bash", "ros_control_laser.bash")
			err = buildMapProc.Start()
			time.Sleep(1 * time.Second)
			cmd = exec.Command("bash", "gmapping.bash")
			err = cmd.Start()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("start running on %d", buildMapProc.Process.Pid)))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("已開啟建圖"))
		}
	})
	// show robot position when mapping
	router.HandleFunc("/showRobotPose", func(w http.ResponseWriter, r *http.Request) {
		if buildMapProc != nil {
			cmd := exec.Command("bash", "show_robot_pose.bash")
			err := cmd.Start()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("start running on %d", buildMapProc.Process.Pid)))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("請先開啟建圖"))
		}
	})
	router.HandleFunc("/buildMap", func(w http.ResponseWriter, r *http.Request) {
		if buildMapProc != nil {
			cmd := exec.Command("bash", "save_map.bash", r.URL.Query().Get("map_name"))
			err := cmd.Run()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("save map as %s", r.URL.Query().Get("map_name"))))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("請先進行建圖"))
		}
	})
	router.HandleFunc("/stopBuildMap", func(w http.ResponseWriter, r *http.Request) {
		if buildMapProc != nil {
			buildMapProc.Process.Kill()
			cmd := exec.Command("bash", "close_roscore.bash")
			err := cmd.Run()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("stop running on %d", buildMapProc.Process.Pid)))
				buildMapProc = nil
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("已關閉建圖"))
		}
	})
	router.HandleFunc("/getMaps", func(w http.ResponseWriter, r *http.Request) {
		files, err := ioutil.ReadDir("./maps")
		if err != nil {
			w.Write([]byte(err.Error()))
			return
		}
		for _, file := range files {
			if !file.IsDir() && strings.HasSuffix(file.Name(), ".yaml") {
				w.Write([]byte(file.Name() + "\n"))
			}
		}
	})
	// start navigation
	router.HandleFunc("/startNavigation", func(w http.ResponseWriter, r *http.Request) {
		if navigationProc == nil {
			info, err := os.Stat("/home/c01/naya_navigation/src/M03_navigation/maps/" + r.URL.Query().Get("use_map"))
			if os.IsNotExist(err) {
				w.Write([]byte(err.Error()))
				return
			} else if info.IsDir() {
				w.Write([]byte("請選擇有效地圖"))
				return
			}
			cmd := exec.Command("bash", "close_roscore.bash")
			err = cmd.Run()
			time.Sleep(time.Second)
			navigationProc = exec.Command("bash", "navigation.bash", r.URL.Query().Get("use_map"))
			err = navigationProc.Start()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("start running on %d", navigationProc.Process.Pid)))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("已開啟導航"))
		}
	})
	// show robot position when navigation
	router.HandleFunc("/showRobotPose_nav", func(w http.ResponseWriter, r *http.Request) {
		if navigationProc != nil {
			cmd := exec.Command("bash", "show_robot_pose.bash")
			err := cmd.Start()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("start running on %d", navigationProc.Process.Pid)))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("請先開啟導航"))
		}
	})
	// run auto_charge server
	router.HandleFunc("/runAutoChargeServer", func(w http.ResponseWriter, r *http.Request) {
		if navigationProc != nil {
			cmd := exec.Command("bash", "auto_charge_server.bash")
			err := cmd.Start()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("start running on %d", navigationProc.Process.Pid)))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("請先開啟導航"))
		} 
	})
	// end
	// run huamn detection camera and aruduino ros node
	router.HandleFunc("/runCameraNodeAndArduinoRosNode", func(w http.ResponseWriter, r *http.Request) {
		if navigationProc != nil {
			cmd := exec.Command("bash", "/home/c01/camera_node_yolo_pub/src/camera_node/start_camera_node_rosserial.bash")
			err := cmd.Start()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("start running on %d", navigationProc.Process.Pid)))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("請先開啟導航"))
		} 
	})
	// end
	// run huamn detection camera and aruduino ros node
	router.HandleFunc("/runDockerYolov4", func(w http.ResponseWriter, r *http.Request) {
		if navigationProc != nil {
			cmd := exec.Command("bash", "/home/c01/camera_node_yolo_pub/src/camera_node/start_docker_yolov4.bash")
			err := cmd.Start()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("start running on %d", navigationProc.Process.Pid)))
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("請先開啟導航"))
		} 
	})
	// end
	router.HandleFunc("/stopNavigation", func(w http.ResponseWriter, r *http.Request) {
		if navigationProc != nil {
			navigationProc.Process.Kill()
			cmd := exec.Command("bash", "close_roscore.bash")
			err := cmd.Run()
			if err == nil {
				w.Write([]byte(fmt.Sprintf("stop running on %d", navigationProc.Process.Pid)))
				navigationProc = nil
			} else {
				w.Write([]byte(err.Error()))
			}
		} else {
			w.Write([]byte("已關閉導航"))
		}
	})
	router.HandleFunc("/sendMultiGoals", func(w http.ResponseWriter, r *http.Request) {
		points := r.URL.Query()["point"]
		fmt.Println(points)
		if len(points) > 0 {
			cmd := exec.Command("bash", append([]string{"send_multi_goals.bash"}, strings.Split(strings.Join(points, ","), ",")...)...)
			cmd.Stdout = os.Stdout
			err := cmd.Start()
			if err == nil {
				w.Write([]byte("已傳送目標點"))
			} else {
				w.Write([]byte(err.Error()))
			}
		}
	})

	// start http server
	router.HandleFunc("/video", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "multipart/x-mixed-replace; boundary=frame")
		data := ""
		for {
			mutex.Lock()
			data = "--frame\r\n  Content-Type: image/jpeg\r\n\r\n" + string(frame) + "\r\n\r\n"
			mutex.Unlock()
			time.Sleep(33 * time.Millisecond)
			w.Write([]byte(data))
		}
	})
	handler := cors.New(cors.Options{
		AllowedOrigins:   []string{"*"},
		AllowedMethods:   []string{"GET", "POST", "OPTIONS", "HEAD"},
		AllowedHeaders:   []string{"*"},
		ExposedHeaders:   []string{"access-token"},
		AllowCredentials: true,
	}).Handler(router)
	fmt.Println("start runing :8082")
	if err := http.ListenAndServe(":8082", handler); err != nil {
		fmt.Println(err)
	}
}

func getframes() {
	img := gocv.NewMat()
	defer img.Close()
	for {
		if ok := webcam.Read(&img); !ok {
			time.Sleep(1 * time.Second)
			continue
		}
		if img.Empty() {
			continue
		}
		frame_id++
		gocv.Resize(img, &img, image.Point{}, float64(0.5), float64(0.5), 0)
		frame2, _ := gocv.IMEncode(".jpg", img)
		frame = frame2.GetBytes()

	}
}
