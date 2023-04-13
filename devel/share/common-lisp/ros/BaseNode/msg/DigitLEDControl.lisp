; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude DigitLEDControl.msg.html

(cl:defclass <DigitLEDControl> (roslisp-msg-protocol:ros-message)
  ((left_dig_led
    :reader left_dig_led
    :initarg :left_dig_led
    :type cl:boolean
    :initform cl:nil)
   (right_dig_led
    :reader right_dig_led
    :initarg :right_dig_led
    :type cl:boolean
    :initform cl:nil)
   (left_run_time
    :reader left_run_time
    :initarg :left_run_time
    :type cl:float
    :initform 0.0)
   (right_run_time
    :reader right_run_time
    :initarg :right_run_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass DigitLEDControl (<DigitLEDControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitLEDControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitLEDControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<DigitLEDControl> is deprecated: use BaseNode-msg:DigitLEDControl instead.")))

(cl:ensure-generic-function 'left_dig_led-val :lambda-list '(m))
(cl:defmethod left_dig_led-val ((m <DigitLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:left_dig_led-val is deprecated.  Use BaseNode-msg:left_dig_led instead.")
  (left_dig_led m))

(cl:ensure-generic-function 'right_dig_led-val :lambda-list '(m))
(cl:defmethod right_dig_led-val ((m <DigitLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:right_dig_led-val is deprecated.  Use BaseNode-msg:right_dig_led instead.")
  (right_dig_led m))

(cl:ensure-generic-function 'left_run_time-val :lambda-list '(m))
(cl:defmethod left_run_time-val ((m <DigitLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:left_run_time-val is deprecated.  Use BaseNode-msg:left_run_time instead.")
  (left_run_time m))

(cl:ensure-generic-function 'right_run_time-val :lambda-list '(m))
(cl:defmethod right_run_time-val ((m <DigitLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:right_run_time-val is deprecated.  Use BaseNode-msg:right_run_time instead.")
  (right_run_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitLEDControl>) ostream)
  "Serializes a message object of type '<DigitLEDControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_dig_led) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_dig_led) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_run_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_run_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitLEDControl>) istream)
  "Deserializes a message object of type '<DigitLEDControl>"
    (cl:setf (cl:slot-value msg 'left_dig_led) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_dig_led) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_run_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_run_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitLEDControl>)))
  "Returns string type for a message object of type '<DigitLEDControl>"
  "BaseNode/DigitLEDControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitLEDControl)))
  "Returns string type for a message object of type 'DigitLEDControl"
  "BaseNode/DigitLEDControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitLEDControl>)))
  "Returns md5sum for a message object of type '<DigitLEDControl>"
  "5fcb3983ee7f931b51ef2d1803e3ef6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitLEDControl)))
  "Returns md5sum for a message object of type 'DigitLEDControl"
  "5fcb3983ee7f931b51ef2d1803e3ef6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitLEDControl>)))
  "Returns full string definition for message of type '<DigitLEDControl>"
  (cl:format cl:nil "bool left_dig_led~%bool right_dig_led~%float32 left_run_time~%float32 right_run_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitLEDControl)))
  "Returns full string definition for message of type 'DigitLEDControl"
  (cl:format cl:nil "bool left_dig_led~%bool right_dig_led~%float32 left_run_time~%float32 right_run_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitLEDControl>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitLEDControl>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitLEDControl
    (cl:cons ':left_dig_led (left_dig_led msg))
    (cl:cons ':right_dig_led (right_dig_led msg))
    (cl:cons ':left_run_time (left_run_time msg))
    (cl:cons ':right_run_time (right_run_time msg))
))
