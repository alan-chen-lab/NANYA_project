; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude PingDataStamped.msg.html

(cl:defclass <PingDataStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ping_data
    :reader ping_data
    :initarg :ping_data
    :type BaseNode-msg:PingData
    :initform (cl:make-instance 'BaseNode-msg:PingData)))
)

(cl:defclass PingDataStamped (<PingDataStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingDataStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingDataStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<PingDataStamped> is deprecated: use BaseNode-msg:PingDataStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PingDataStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:header-val is deprecated.  Use BaseNode-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ping_data-val :lambda-list '(m))
(cl:defmethod ping_data-val ((m <PingDataStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:ping_data-val is deprecated.  Use BaseNode-msg:ping_data instead.")
  (ping_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingDataStamped>) ostream)
  "Serializes a message object of type '<PingDataStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ping_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingDataStamped>) istream)
  "Deserializes a message object of type '<PingDataStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ping_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingDataStamped>)))
  "Returns string type for a message object of type '<PingDataStamped>"
  "BaseNode/PingDataStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDataStamped)))
  "Returns string type for a message object of type 'PingDataStamped"
  "BaseNode/PingDataStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingDataStamped>)))
  "Returns md5sum for a message object of type '<PingDataStamped>"
  "6c09e3f811346ddffeb07e7c62e21256")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingDataStamped)))
  "Returns md5sum for a message object of type 'PingDataStamped"
  "6c09e3f811346ddffeb07e7c62e21256")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingDataStamped>)))
  "Returns full string definition for message of type '<PingDataStamped>"
  (cl:format cl:nil "Header header~%PingData ping_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: BaseNode/PingData~%string pingSN~%string firmwareVer~%string deviceID~%int32 day_~%int32 hour_~%int32 min_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingDataStamped)))
  "Returns full string definition for message of type 'PingDataStamped"
  (cl:format cl:nil "Header header~%PingData ping_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: BaseNode/PingData~%string pingSN~%string firmwareVer~%string deviceID~%int32 day_~%int32 hour_~%int32 min_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingDataStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ping_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingDataStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PingDataStamped
    (cl:cons ':header (header msg))
    (cl:cons ':ping_data (ping_data msg))
))
