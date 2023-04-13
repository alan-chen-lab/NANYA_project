;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::RealSpeedData)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'RealSpeedData (find-package "BASENODE")))
(unless (find-package "BASENODE::REALSPEEDDATA")
  (make-package "BASENODE::REALSPEEDDATA"))

(in-package "ROS")
;;//! \htmlinclude RealSpeedData.msg.html


(defclass BaseNode::RealSpeedData
  :super ros::object
  :slots (_left_control_value _left_error_value _left_reference_speed_value _left_real_speed_value _left_output_PWM_value _left_brake_value _right_control_value _right_error_value _right_reference_speed_value _right_real_speed_value _right_output_PWM_value _right_brake_value ))

(defmethod BaseNode::RealSpeedData
  (:init
   (&key
    ((:left_control_value __left_control_value) 0.0)
    ((:left_error_value __left_error_value) 0.0)
    ((:left_reference_speed_value __left_reference_speed_value) 0.0)
    ((:left_real_speed_value __left_real_speed_value) 0.0)
    ((:left_output_PWM_value __left_output_PWM_value) 0.0)
    ((:left_brake_value __left_brake_value) 0.0)
    ((:right_control_value __right_control_value) 0.0)
    ((:right_error_value __right_error_value) 0.0)
    ((:right_reference_speed_value __right_reference_speed_value) 0.0)
    ((:right_real_speed_value __right_real_speed_value) 0.0)
    ((:right_output_PWM_value __right_output_PWM_value) 0.0)
    ((:right_brake_value __right_brake_value) 0.0)
    )
   (send-super :init)
   (setq _left_control_value (float __left_control_value))
   (setq _left_error_value (float __left_error_value))
   (setq _left_reference_speed_value (float __left_reference_speed_value))
   (setq _left_real_speed_value (float __left_real_speed_value))
   (setq _left_output_PWM_value (float __left_output_PWM_value))
   (setq _left_brake_value (float __left_brake_value))
   (setq _right_control_value (float __right_control_value))
   (setq _right_error_value (float __right_error_value))
   (setq _right_reference_speed_value (float __right_reference_speed_value))
   (setq _right_real_speed_value (float __right_real_speed_value))
   (setq _right_output_PWM_value (float __right_output_PWM_value))
   (setq _right_brake_value (float __right_brake_value))
   self)
  (:left_control_value
   (&optional __left_control_value)
   (if __left_control_value (setq _left_control_value __left_control_value)) _left_control_value)
  (:left_error_value
   (&optional __left_error_value)
   (if __left_error_value (setq _left_error_value __left_error_value)) _left_error_value)
  (:left_reference_speed_value
   (&optional __left_reference_speed_value)
   (if __left_reference_speed_value (setq _left_reference_speed_value __left_reference_speed_value)) _left_reference_speed_value)
  (:left_real_speed_value
   (&optional __left_real_speed_value)
   (if __left_real_speed_value (setq _left_real_speed_value __left_real_speed_value)) _left_real_speed_value)
  (:left_output_PWM_value
   (&optional __left_output_PWM_value)
   (if __left_output_PWM_value (setq _left_output_PWM_value __left_output_PWM_value)) _left_output_PWM_value)
  (:left_brake_value
   (&optional __left_brake_value)
   (if __left_brake_value (setq _left_brake_value __left_brake_value)) _left_brake_value)
  (:right_control_value
   (&optional __right_control_value)
   (if __right_control_value (setq _right_control_value __right_control_value)) _right_control_value)
  (:right_error_value
   (&optional __right_error_value)
   (if __right_error_value (setq _right_error_value __right_error_value)) _right_error_value)
  (:right_reference_speed_value
   (&optional __right_reference_speed_value)
   (if __right_reference_speed_value (setq _right_reference_speed_value __right_reference_speed_value)) _right_reference_speed_value)
  (:right_real_speed_value
   (&optional __right_real_speed_value)
   (if __right_real_speed_value (setq _right_real_speed_value __right_real_speed_value)) _right_real_speed_value)
  (:right_output_PWM_value
   (&optional __right_output_PWM_value)
   (if __right_output_PWM_value (setq _right_output_PWM_value __right_output_PWM_value)) _right_output_PWM_value)
  (:right_brake_value
   (&optional __right_brake_value)
   (if __right_brake_value (setq _right_brake_value __right_brake_value)) _right_brake_value)
  (:serialization-length
   ()
   (+
    ;; float32 _left_control_value
    4
    ;; float32 _left_error_value
    4
    ;; float32 _left_reference_speed_value
    4
    ;; float32 _left_real_speed_value
    4
    ;; float32 _left_output_PWM_value
    4
    ;; float32 _left_brake_value
    4
    ;; float32 _right_control_value
    4
    ;; float32 _right_error_value
    4
    ;; float32 _right_reference_speed_value
    4
    ;; float32 _right_real_speed_value
    4
    ;; float32 _right_output_PWM_value
    4
    ;; float32 _right_brake_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left_control_value
       (sys::poke _left_control_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_error_value
       (sys::poke _left_error_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_reference_speed_value
       (sys::poke _left_reference_speed_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_real_speed_value
       (sys::poke _left_real_speed_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_output_PWM_value
       (sys::poke _left_output_PWM_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_brake_value
       (sys::poke _left_brake_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_control_value
       (sys::poke _right_control_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_error_value
       (sys::poke _right_error_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_reference_speed_value
       (sys::poke _right_reference_speed_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_real_speed_value
       (sys::poke _right_real_speed_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_output_PWM_value
       (sys::poke _right_output_PWM_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_brake_value
       (sys::poke _right_brake_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left_control_value
     (setq _left_control_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_error_value
     (setq _left_error_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_reference_speed_value
     (setq _left_reference_speed_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_real_speed_value
     (setq _left_real_speed_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_output_PWM_value
     (setq _left_output_PWM_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_brake_value
     (setq _left_brake_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_control_value
     (setq _right_control_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_error_value
     (setq _right_error_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_reference_speed_value
     (setq _right_reference_speed_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_real_speed_value
     (setq _right_real_speed_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_output_PWM_value
     (setq _right_output_PWM_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_brake_value
     (setq _right_brake_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get BaseNode::RealSpeedData :md5sum-) "af4042522846a38590d01848f45d1cda")
(setf (get BaseNode::RealSpeedData :datatype-) "BaseNode/RealSpeedData")
(setf (get BaseNode::RealSpeedData :definition-)
      "float32 left_control_value
float32 left_error_value
float32 left_reference_speed_value
float32 left_real_speed_value
float32 left_output_PWM_value
float32 left_brake_value
float32 right_control_value
float32 right_error_value
float32 right_reference_speed_value
float32 right_real_speed_value
float32 right_output_PWM_value
float32 right_brake_value
")



(provide :BaseNode/RealSpeedData "af4042522846a38590d01848f45d1cda")


