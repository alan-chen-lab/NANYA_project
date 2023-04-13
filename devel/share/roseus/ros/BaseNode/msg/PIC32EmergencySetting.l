;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::PIC32EmergencySetting)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'PIC32EmergencySetting (find-package "BASENODE")))
(unless (find-package "BASENODE::PIC32EMERGENCYSETTING")
  (make-package "BASENODE::PIC32EMERGENCYSETTING"))

(in-package "ROS")
;;//! \htmlinclude PIC32EmergencySetting.msg.html


(defclass BaseNode::PIC32EmergencySetting
  :super ros::object
  :slots (_ultrasonic_brake_enabled _emergency_button_enabled _bumper_brake_enabled _auto_dock_enabled _wheel_release_enabled _wheel_brake_enabled _ir_enabled _sonic_distance ))

(defmethod BaseNode::PIC32EmergencySetting
  (:init
   (&key
    ((:ultrasonic_brake_enabled __ultrasonic_brake_enabled) nil)
    ((:emergency_button_enabled __emergency_button_enabled) nil)
    ((:bumper_brake_enabled __bumper_brake_enabled) nil)
    ((:auto_dock_enabled __auto_dock_enabled) nil)
    ((:wheel_release_enabled __wheel_release_enabled) nil)
    ((:wheel_brake_enabled __wheel_brake_enabled) nil)
    ((:ir_enabled __ir_enabled) nil)
    ((:sonic_distance __sonic_distance) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _ultrasonic_brake_enabled __ultrasonic_brake_enabled)
   (setq _emergency_button_enabled __emergency_button_enabled)
   (setq _bumper_brake_enabled __bumper_brake_enabled)
   (setq _auto_dock_enabled __auto_dock_enabled)
   (setq _wheel_release_enabled __wheel_release_enabled)
   (setq _wheel_brake_enabled __wheel_brake_enabled)
   (setq _ir_enabled __ir_enabled)
   (setq _sonic_distance __sonic_distance)
   self)
  (:ultrasonic_brake_enabled
   (&optional __ultrasonic_brake_enabled)
   (if __ultrasonic_brake_enabled (setq _ultrasonic_brake_enabled __ultrasonic_brake_enabled)) _ultrasonic_brake_enabled)
  (:emergency_button_enabled
   (&optional __emergency_button_enabled)
   (if __emergency_button_enabled (setq _emergency_button_enabled __emergency_button_enabled)) _emergency_button_enabled)
  (:bumper_brake_enabled
   (&optional __bumper_brake_enabled)
   (if __bumper_brake_enabled (setq _bumper_brake_enabled __bumper_brake_enabled)) _bumper_brake_enabled)
  (:auto_dock_enabled
   (&optional __auto_dock_enabled)
   (if __auto_dock_enabled (setq _auto_dock_enabled __auto_dock_enabled)) _auto_dock_enabled)
  (:wheel_release_enabled
   (&optional __wheel_release_enabled)
   (if __wheel_release_enabled (setq _wheel_release_enabled __wheel_release_enabled)) _wheel_release_enabled)
  (:wheel_brake_enabled
   (&optional __wheel_brake_enabled)
   (if __wheel_brake_enabled (setq _wheel_brake_enabled __wheel_brake_enabled)) _wheel_brake_enabled)
  (:ir_enabled
   (&optional __ir_enabled)
   (if __ir_enabled (setq _ir_enabled __ir_enabled)) _ir_enabled)
  (:sonic_distance
   (&optional __sonic_distance)
   (if __sonic_distance (setq _sonic_distance __sonic_distance)) _sonic_distance)
  (:serialization-length
   ()
   (+
    ;; bool _ultrasonic_brake_enabled
    1
    ;; bool _emergency_button_enabled
    1
    ;; bool _bumper_brake_enabled
    1
    ;; bool _auto_dock_enabled
    1
    ;; bool _wheel_release_enabled
    1
    ;; bool _wheel_brake_enabled
    1
    ;; bool _ir_enabled
    1
    ;; float64[] _sonic_distance
    (* 8    (length _sonic_distance)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ultrasonic_brake_enabled
       (if _ultrasonic_brake_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_button_enabled
       (if _emergency_button_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _bumper_brake_enabled
       (if _bumper_brake_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _auto_dock_enabled
       (if _auto_dock_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_release_enabled
       (if _wheel_release_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_brake_enabled
       (if _wheel_brake_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir_enabled
       (if _ir_enabled (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _sonic_distance
     (write-long (length _sonic_distance) s)
     (dotimes (i (length _sonic_distance))
       (sys::poke (elt _sonic_distance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ultrasonic_brake_enabled
     (setq _ultrasonic_brake_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_button_enabled
     (setq _emergency_button_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bumper_brake_enabled
     (setq _bumper_brake_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto_dock_enabled
     (setq _auto_dock_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_release_enabled
     (setq _wheel_release_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_brake_enabled
     (setq _wheel_brake_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir_enabled
     (setq _ir_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _sonic_distance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sonic_distance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sonic_distance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get BaseNode::PIC32EmergencySetting :md5sum-) "3769897b20780c564a9f24a1698a3c0a")
(setf (get BaseNode::PIC32EmergencySetting :datatype-) "BaseNode/PIC32EmergencySetting")
(setf (get BaseNode::PIC32EmergencySetting :definition-)
      "bool ultrasonic_brake_enabled
bool emergency_button_enabled
bool bumper_brake_enabled
bool auto_dock_enabled

bool wheel_release_enabled
bool wheel_brake_enabled

bool ir_enabled


float64[] sonic_distance

")



(provide :BaseNode/PIC32EmergencySetting "3769897b20780c564a9f24a1698a3c0a")


