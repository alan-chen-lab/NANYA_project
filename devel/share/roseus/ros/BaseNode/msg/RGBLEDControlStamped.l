;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::RGBLEDControlStamped)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'RGBLEDControlStamped (find-package "BASENODE")))
(unless (find-package "BASENODE::RGBLEDCONTROLSTAMPED")
  (make-package "BASENODE::RGBLEDCONTROLSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude RGBLEDControlStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass BaseNode::RGBLEDControlStamped
  :super ros::object
  :slots (_header _led_color_control ))

(defmethod BaseNode::RGBLEDControlStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:led_color_control __led_color_control) (instance BaseNode::RGBLEDControl :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _led_color_control __led_color_control)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:led_color_control
   (&rest __led_color_control)
   (if (keywordp (car __led_color_control))
       (send* _led_color_control __led_color_control)
     (progn
       (if __led_color_control (setq _led_color_control (car __led_color_control)))
       _led_color_control)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; BaseNode/RGBLEDControl _led_color_control
    (send _led_color_control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; BaseNode/RGBLEDControl _led_color_control
       (send _led_color_control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; BaseNode/RGBLEDControl _led_color_control
     (send _led_color_control :deserialize buf ptr-) (incf ptr- (send _led_color_control :serialization-length))
   ;;
   self)
  )

(setf (get BaseNode::RGBLEDControlStamped :md5sum-) "b3f7ba4866db5543a31814d27b747cd1")
(setf (get BaseNode::RGBLEDControlStamped :datatype-) "BaseNode/RGBLEDControlStamped")
(setf (get BaseNode::RGBLEDControlStamped :definition-)
      "Header header
RGBLEDControl led_color_control

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: BaseNode/RGBLEDControl
uint8 start_red
uint8 start_green
uint8 start_blue
uint8 end_red
uint8 end_green
uint8 end_blue
float32 transform_time 
float32 run_time

")



(provide :BaseNode/RGBLEDControlStamped "b3f7ba4866db5543a31814d27b747cd1")


