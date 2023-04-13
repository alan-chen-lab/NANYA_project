; Auto-generated. Do not edit!


(cl:in-package auto_charge_service-srv)


;//! \htmlinclude auto_charge_srv-request.msg.html

(cl:defclass <auto_charge_srv-request> (roslisp-msg-protocol:ros-message)
  ((goal_x
    :reader goal_x
    :initarg :goal_x
    :type cl:float
    :initform 0.0)
   (goal_y
    :reader goal_y
    :initarg :goal_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass auto_charge_srv-request (<auto_charge_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <auto_charge_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'auto_charge_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_charge_service-srv:<auto_charge_srv-request> is deprecated: use auto_charge_service-srv:auto_charge_srv-request instead.")))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <auto_charge_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-srv:goal_x-val is deprecated.  Use auto_charge_service-srv:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <auto_charge_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-srv:goal_y-val is deprecated.  Use auto_charge_service-srv:goal_y instead.")
  (goal_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <auto_charge_srv-request>) ostream)
  "Serializes a message object of type '<auto_charge_srv-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <auto_charge_srv-request>) istream)
  "Deserializes a message object of type '<auto_charge_srv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<auto_charge_srv-request>)))
  "Returns string type for a service object of type '<auto_charge_srv-request>"
  "auto_charge_service/auto_charge_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'auto_charge_srv-request)))
  "Returns string type for a service object of type 'auto_charge_srv-request"
  "auto_charge_service/auto_charge_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<auto_charge_srv-request>)))
  "Returns md5sum for a message object of type '<auto_charge_srv-request>"
  "1fb8fd8311cc5d196025d0fcca8c666b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'auto_charge_srv-request)))
  "Returns md5sum for a message object of type 'auto_charge_srv-request"
  "1fb8fd8311cc5d196025d0fcca8c666b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<auto_charge_srv-request>)))
  "Returns full string definition for message of type '<auto_charge_srv-request>"
  (cl:format cl:nil "float64 goal_x~%float64 goal_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'auto_charge_srv-request)))
  "Returns full string definition for message of type 'auto_charge_srv-request"
  (cl:format cl:nil "float64 goal_x~%float64 goal_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <auto_charge_srv-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <auto_charge_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'auto_charge_srv-request
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
))
;//! \htmlinclude auto_charge_srv-response.msg.html

(cl:defclass <auto_charge_srv-response> (roslisp-msg-protocol:ros-message)
  ((goal_x
    :reader goal_x
    :initarg :goal_x
    :type cl:float
    :initform 0.0)
   (goal_y
    :reader goal_y
    :initarg :goal_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass auto_charge_srv-response (<auto_charge_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <auto_charge_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'auto_charge_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_charge_service-srv:<auto_charge_srv-response> is deprecated: use auto_charge_service-srv:auto_charge_srv-response instead.")))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <auto_charge_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-srv:goal_x-val is deprecated.  Use auto_charge_service-srv:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <auto_charge_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-srv:goal_y-val is deprecated.  Use auto_charge_service-srv:goal_y instead.")
  (goal_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <auto_charge_srv-response>) ostream)
  "Serializes a message object of type '<auto_charge_srv-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <auto_charge_srv-response>) istream)
  "Deserializes a message object of type '<auto_charge_srv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<auto_charge_srv-response>)))
  "Returns string type for a service object of type '<auto_charge_srv-response>"
  "auto_charge_service/auto_charge_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'auto_charge_srv-response)))
  "Returns string type for a service object of type 'auto_charge_srv-response"
  "auto_charge_service/auto_charge_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<auto_charge_srv-response>)))
  "Returns md5sum for a message object of type '<auto_charge_srv-response>"
  "1fb8fd8311cc5d196025d0fcca8c666b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'auto_charge_srv-response)))
  "Returns md5sum for a message object of type 'auto_charge_srv-response"
  "1fb8fd8311cc5d196025d0fcca8c666b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<auto_charge_srv-response>)))
  "Returns full string definition for message of type '<auto_charge_srv-response>"
  (cl:format cl:nil "float64 goal_x~%float64 goal_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'auto_charge_srv-response)))
  "Returns full string definition for message of type 'auto_charge_srv-response"
  (cl:format cl:nil "float64 goal_x~%float64 goal_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <auto_charge_srv-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <auto_charge_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'auto_charge_srv-response
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'auto_charge_srv)))
  'auto_charge_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'auto_charge_srv)))
  'auto_charge_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'auto_charge_srv)))
  "Returns string type for a service object of type '<auto_charge_srv>"
  "auto_charge_service/auto_charge_srv")