; Auto-generated. Do not edit!


(cl:in-package simple_navigation_goals-msg)


;//! \htmlinclude auto_info.msg.html

(cl:defclass <auto_info> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass auto_info (<auto_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <auto_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'auto_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_navigation_goals-msg:<auto_info> is deprecated: use simple_navigation_goals-msg:auto_info instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <auto_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_navigation_goals-msg:info-val is deprecated.  Use simple_navigation_goals-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <auto_info>) ostream)
  "Serializes a message object of type '<auto_info>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'info) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <auto_info>) istream)
  "Deserializes a message object of type '<auto_info>"
    (cl:setf (cl:slot-value msg 'info) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<auto_info>)))
  "Returns string type for a message object of type '<auto_info>"
  "simple_navigation_goals/auto_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'auto_info)))
  "Returns string type for a message object of type 'auto_info"
  "simple_navigation_goals/auto_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<auto_info>)))
  "Returns md5sum for a message object of type '<auto_info>"
  "65d497f9cf95d78ecfe2d84e8a1a7ad3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'auto_info)))
  "Returns md5sum for a message object of type 'auto_info"
  "65d497f9cf95d78ecfe2d84e8a1a7ad3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<auto_info>)))
  "Returns full string definition for message of type '<auto_info>"
  (cl:format cl:nil "bool info~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'auto_info)))
  "Returns full string definition for message of type 'auto_info"
  (cl:format cl:nil "bool info~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <auto_info>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <auto_info>))
  "Converts a ROS message object to a list"
  (cl:list 'auto_info
    (cl:cons ':info (info msg))
))
