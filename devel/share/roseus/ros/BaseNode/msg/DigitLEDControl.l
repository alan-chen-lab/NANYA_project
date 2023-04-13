;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::DigitLEDControl)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'DigitLEDControl (find-package "BASENODE")))
(unless (find-package "BASENODE::DIGITLEDCONTROL")
  (make-package "BASENODE::DIGITLEDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude DigitLEDControl.msg.html


(defclass BaseNode::DigitLEDControl
  :super ros::object
  :slots (_left_dig_led _right_dig_led _left_run_time _right_run_time ))

(defmethod BaseNode::DigitLEDControl
  (:init
   (&key
    ((:left_dig_led __left_dig_led) nil)
    ((:right_dig_led __right_dig_led) nil)
    ((:left_run_time __left_run_time) 0.0)
    ((:right_run_time __right_run_time) 0.0)
    )
   (send-super :init)
   (setq _left_dig_led __left_dig_led)
   (setq _right_dig_led __right_dig_led)
   (setq _left_run_time (float __left_run_time))
   (setq _right_run_time (float __right_run_time))
   self)
  (:left_dig_led
   (&optional __left_dig_led)
   (if __left_dig_led (setq _left_dig_led __left_dig_led)) _left_dig_led)
  (:right_dig_led
   (&optional __right_dig_led)
   (if __right_dig_led (setq _right_dig_led __right_dig_led)) _right_dig_led)
  (:left_run_time
   (&optional __left_run_time)
   (if __left_run_time (setq _left_run_time __left_run_time)) _left_run_time)
  (:right_run_time
   (&optional __right_run_time)
   (if __right_run_time (setq _right_run_time __right_run_time)) _right_run_time)
  (:serialization-length
   ()
   (+
    ;; bool _left_dig_led
    1
    ;; bool _right_dig_led
    1
    ;; float32 _left_run_time
    4
    ;; float32 _right_run_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _left_dig_led
       (if _left_dig_led (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_dig_led
       (if _right_dig_led (write-byte -1 s) (write-byte 0 s))
     ;; float32 _left_run_time
       (sys::poke _left_run_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_run_time
       (sys::poke _right_run_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _left_dig_led
     (setq _left_dig_led (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_dig_led
     (setq _right_dig_led (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _left_run_time
     (setq _left_run_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_run_time
     (setq _right_run_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get BaseNode::DigitLEDControl :md5sum-) "5fcb3983ee7f931b51ef2d1803e3ef6a")
(setf (get BaseNode::DigitLEDControl :datatype-) "BaseNode/DigitLEDControl")
(setf (get BaseNode::DigitLEDControl :definition-)
      "bool left_dig_led
bool right_dig_led
float32 left_run_time
float32 right_run_time

")



(provide :BaseNode/DigitLEDControl "5fcb3983ee7f931b51ef2d1803e3ef6a")


