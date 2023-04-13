; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude RGBLEDControlStamped.msg.html

(cl:defclass <RGBLEDControlStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (led_color_control
    :reader led_color_control
    :initarg :led_color_control
    :type BaseNode-msg:RGBLEDControl
    :initform (cl:make-instance 'BaseNode-msg:RGBLEDControl)))
)

(cl:defclass RGBLEDControlStamped (<RGBLEDControlStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGBLEDControlStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGBLEDControlStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<RGBLEDControlStamped> is deprecated: use BaseNode-msg:RGBLEDControlStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RGBLEDControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:header-val is deprecated.  Use BaseNode-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'led_color_control-val :lambda-list '(m))
(cl:defmethod led_color_control-val ((m <RGBLEDControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:led_color_control-val is deprecated.  Use BaseNode-msg:led_color_control instead.")
  (led_color_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGBLEDControlStamped>) ostream)
  "Serializes a message object of type '<RGBLEDControlStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'led_color_control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGBLEDControlStamped>) istream)
  "Deserializes a message object of type '<RGBLEDControlStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'led_color_control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGBLEDControlStamped>)))
  "Returns string type for a message object of type '<RGBLEDControlStamped>"
  "BaseNode/RGBLEDControlStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGBLEDControlStamped)))
  "Returns string type for a message object of type 'RGBLEDControlStamped"
  "BaseNode/RGBLEDControlStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGBLEDControlStamped>)))
  "Returns md5sum for a message object of type '<RGBLEDControlStamped>"
  "b3f7ba4866db5543a31814d27b747cd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGBLEDControlStamped)))
  "Returns md5sum for a message object of type 'RGBLEDControlStamped"
  "b3f7ba4866db5543a31814d27b747cd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGBLEDControlStamped>)))
  "Returns full string definition for message of type '<RGBLEDControlStamped>"
  (cl:format cl:nil "Header header~%RGBLEDControl led_color_control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: BaseNode/RGBLEDControl~%uint8 start_red~%uint8 start_green~%uint8 start_blue~%uint8 end_red~%uint8 end_green~%uint8 end_blue~%float32 transform_time ~%float32 run_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGBLEDControlStamped)))
  "Returns full string definition for message of type 'RGBLEDControlStamped"
  (cl:format cl:nil "Header header~%RGBLEDControl led_color_control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: BaseNode/RGBLEDControl~%uint8 start_red~%uint8 start_green~%uint8 start_blue~%uint8 end_red~%uint8 end_green~%uint8 end_blue~%float32 transform_time ~%float32 run_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGBLEDControlStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'led_color_control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGBLEDControlStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'RGBLEDControlStamped
    (cl:cons ':header (header msg))
    (cl:cons ':led_color_control (led_color_control msg))
))
