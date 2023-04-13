;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::RGBLEDControl)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'RGBLEDControl (find-package "BASENODE")))
(unless (find-package "BASENODE::RGBLEDCONTROL")
  (make-package "BASENODE::RGBLEDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude RGBLEDControl.msg.html


(defclass BaseNode::RGBLEDControl
  :super ros::object
  :slots (_start_red _start_green _start_blue _end_red _end_green _end_blue _transform_time _run_time ))

(defmethod BaseNode::RGBLEDControl
  (:init
   (&key
    ((:start_red __start_red) 0)
    ((:start_green __start_green) 0)
    ((:start_blue __start_blue) 0)
    ((:end_red __end_red) 0)
    ((:end_green __end_green) 0)
    ((:end_blue __end_blue) 0)
    ((:transform_time __transform_time) 0.0)
    ((:run_time __run_time) 0.0)
    )
   (send-super :init)
   (setq _start_red (round __start_red))
   (setq _start_green (round __start_green))
   (setq _start_blue (round __start_blue))
   (setq _end_red (round __end_red))
   (setq _end_green (round __end_green))
   (setq _end_blue (round __end_blue))
   (setq _transform_time (float __transform_time))
   (setq _run_time (float __run_time))
   self)
  (:start_red
   (&optional __start_red)
   (if __start_red (setq _start_red __start_red)) _start_red)
  (:start_green
   (&optional __start_green)
   (if __start_green (setq _start_green __start_green)) _start_green)
  (:start_blue
   (&optional __start_blue)
   (if __start_blue (setq _start_blue __start_blue)) _start_blue)
  (:end_red
   (&optional __end_red)
   (if __end_red (setq _end_red __end_red)) _end_red)
  (:end_green
   (&optional __end_green)
   (if __end_green (setq _end_green __end_green)) _end_green)
  (:end_blue
   (&optional __end_blue)
   (if __end_blue (setq _end_blue __end_blue)) _end_blue)
  (:transform_time
   (&optional __transform_time)
   (if __transform_time (setq _transform_time __transform_time)) _transform_time)
  (:run_time
   (&optional __run_time)
   (if __run_time (setq _run_time __run_time)) _run_time)
  (:serialization-length
   ()
   (+
    ;; uint8 _start_red
    1
    ;; uint8 _start_green
    1
    ;; uint8 _start_blue
    1
    ;; uint8 _end_red
    1
    ;; uint8 _end_green
    1
    ;; uint8 _end_blue
    1
    ;; float32 _transform_time
    4
    ;; float32 _run_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _start_red
       (write-byte _start_red s)
     ;; uint8 _start_green
       (write-byte _start_green s)
     ;; uint8 _start_blue
       (write-byte _start_blue s)
     ;; uint8 _end_red
       (write-byte _end_red s)
     ;; uint8 _end_green
       (write-byte _end_green s)
     ;; uint8 _end_blue
       (write-byte _end_blue s)
     ;; float32 _transform_time
       (sys::poke _transform_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _run_time
       (sys::poke _run_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _start_red
     (setq _start_red (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _start_green
     (setq _start_green (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _start_blue
     (setq _start_blue (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _end_red
     (setq _end_red (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _end_green
     (setq _end_green (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _end_blue
     (setq _end_blue (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _transform_time
     (setq _transform_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _run_time
     (setq _run_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get BaseNode::RGBLEDControl :md5sum-) "4096ab5b30b2048afde4d3c5779fe493")
(setf (get BaseNode::RGBLEDControl :datatype-) "BaseNode/RGBLEDControl")
(setf (get BaseNode::RGBLEDControl :definition-)
      "uint8 start_red
uint8 start_green
uint8 start_blue
uint8 end_red
uint8 end_green
uint8 end_blue
float32 transform_time 
float32 run_time

")



(provide :BaseNode/RGBLEDControl "4096ab5b30b2048afde4d3c5779fe493")


