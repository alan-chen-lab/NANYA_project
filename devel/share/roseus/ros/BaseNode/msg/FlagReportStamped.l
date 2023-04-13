;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::FlagReportStamped)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'FlagReportStamped (find-package "BASENODE")))
(unless (find-package "BASENODE::FLAGREPORTSTAMPED")
  (make-package "BASENODE::FLAGREPORTSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude FlagReportStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass BaseNode::FlagReportStamped
  :super ros::object
  :slots (_header _flag_report ))

(defmethod BaseNode::FlagReportStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:flag_report __flag_report) (instance BaseNode::FlagReport :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _flag_report __flag_report)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:flag_report
   (&rest __flag_report)
   (if (keywordp (car __flag_report))
       (send* _flag_report __flag_report)
     (progn
       (if __flag_report (setq _flag_report (car __flag_report)))
       _flag_report)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; BaseNode/FlagReport _flag_report
    (send _flag_report :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; BaseNode/FlagReport _flag_report
       (send _flag_report :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; BaseNode/FlagReport _flag_report
     (send _flag_report :deserialize buf ptr-) (incf ptr- (send _flag_report :serialization-length))
   ;;
   self)
  )

(setf (get BaseNode::FlagReportStamped :md5sum-) "51a9914a0bbd2a4083e199a0966ecbf3")
(setf (get BaseNode::FlagReportStamped :datatype-) "BaseNode/FlagReportStamped")
(setf (get BaseNode::FlagReportStamped :definition-)
      "Header header
FlagReport flag_report


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
MSG: BaseNode/FlagReport
# Move Direction
bool stop
bool walking_front
bool walking_back
bool rotating_left
bool rotating_right

# Robot Mode Flag
bool wheel_control_mode_1
bool wheel_control_mode_2
bool wheel_control_mode_3
bool wheel_brake_mode
bool wheel_release_mode
bool go_to_dock
bool dock_escape

# charge
bool do_not_charge
bool charging
bool charge_finish
bool fault_in_charge

# Button
bool stop_btn_hit
bool sleep_btn_hit





")



(provide :BaseNode/FlagReportStamped "51a9914a0bbd2a4083e199a0966ecbf3")


