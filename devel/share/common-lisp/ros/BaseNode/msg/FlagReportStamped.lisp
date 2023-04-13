; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude FlagReportStamped.msg.html

(cl:defclass <FlagReportStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (flag_report
    :reader flag_report
    :initarg :flag_report
    :type BaseNode-msg:FlagReport
    :initform (cl:make-instance 'BaseNode-msg:FlagReport)))
)

(cl:defclass FlagReportStamped (<FlagReportStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlagReportStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlagReportStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<FlagReportStamped> is deprecated: use BaseNode-msg:FlagReportStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FlagReportStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:header-val is deprecated.  Use BaseNode-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'flag_report-val :lambda-list '(m))
(cl:defmethod flag_report-val ((m <FlagReportStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:flag_report-val is deprecated.  Use BaseNode-msg:flag_report instead.")
  (flag_report m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlagReportStamped>) ostream)
  "Serializes a message object of type '<FlagReportStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'flag_report) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlagReportStamped>) istream)
  "Deserializes a message object of type '<FlagReportStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'flag_report) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlagReportStamped>)))
  "Returns string type for a message object of type '<FlagReportStamped>"
  "BaseNode/FlagReportStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlagReportStamped)))
  "Returns string type for a message object of type 'FlagReportStamped"
  "BaseNode/FlagReportStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlagReportStamped>)))
  "Returns md5sum for a message object of type '<FlagReportStamped>"
  "51a9914a0bbd2a4083e199a0966ecbf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlagReportStamped)))
  "Returns md5sum for a message object of type 'FlagReportStamped"
  "51a9914a0bbd2a4083e199a0966ecbf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlagReportStamped>)))
  "Returns full string definition for message of type '<FlagReportStamped>"
  (cl:format cl:nil "Header header~%FlagReport flag_report~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: BaseNode/FlagReport~%# Move Direction~%bool stop~%bool walking_front~%bool walking_back~%bool rotating_left~%bool rotating_right~%~%# Robot Mode Flag~%bool wheel_control_mode_1~%bool wheel_control_mode_2~%bool wheel_control_mode_3~%bool wheel_brake_mode~%bool wheel_release_mode~%bool go_to_dock~%bool dock_escape~%~%# charge~%bool do_not_charge~%bool charging~%bool charge_finish~%bool fault_in_charge~%~%# Button~%bool stop_btn_hit~%bool sleep_btn_hit~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlagReportStamped)))
  "Returns full string definition for message of type 'FlagReportStamped"
  (cl:format cl:nil "Header header~%FlagReport flag_report~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: BaseNode/FlagReport~%# Move Direction~%bool stop~%bool walking_front~%bool walking_back~%bool rotating_left~%bool rotating_right~%~%# Robot Mode Flag~%bool wheel_control_mode_1~%bool wheel_control_mode_2~%bool wheel_control_mode_3~%bool wheel_brake_mode~%bool wheel_release_mode~%bool go_to_dock~%bool dock_escape~%~%# charge~%bool do_not_charge~%bool charging~%bool charge_finish~%bool fault_in_charge~%~%# Button~%bool stop_btn_hit~%bool sleep_btn_hit~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlagReportStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'flag_report))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlagReportStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'FlagReportStamped
    (cl:cons ':header (header msg))
    (cl:cons ':flag_report (flag_report msg))
))
