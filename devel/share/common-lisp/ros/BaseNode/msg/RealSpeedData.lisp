; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude RealSpeedData.msg.html

(cl:defclass <RealSpeedData> (roslisp-msg-protocol:ros-message)
  ((left_control_value
    :reader left_control_value
    :initarg :left_control_value
    :type cl:float
    :initform 0.0)
   (left_error_value
    :reader left_error_value
    :initarg :left_error_value
    :type cl:float
    :initform 0.0)
   (left_reference_speed_value
    :reader left_reference_speed_value
    :initarg :left_reference_speed_value
    :type cl:float
    :initform 0.0)
   (left_real_speed_value
    :reader left_real_speed_value
    :initarg :left_real_speed_value
    :type cl:float
    :initform 0.0)
   (left_output_PWM_value
    :reader left_output_PWM_value
    :initarg :left_output_PWM_value
    :type cl:float
    :initform 0.0)
   (left_brake_value
    :reader left_brake_value
    :initarg :left_brake_value
    :type cl:float
    :initform 0.0)
   (right_control_value
    :reader right_control_value
    :initarg :right_control_value
    :type cl:float
    :initform 0.0)
   (right_error_value
    :reader right_error_value
    :initarg :right_error_value
    :type cl:float
    :initform 0.0)
   (right_reference_speed_value
    :reader right_reference_speed_value
    :initarg :right_reference_speed_value
    :type cl:float
    :initform 0.0)
   (right_real_speed_value
    :reader right_real_speed_value
    :initarg :right_real_speed_value
    :type cl:float
    :initform 0.0)
   (right_output_PWM_value
    :reader right_output_PWM_value
    :initarg :right_output_PWM_value
    :type cl:float
    :initform 0.0)
   (right_brake_value
    :reader right_brake_value
    :initarg :right_brake_value
    :type cl:float
    :initform 0.0))
)

(cl:defclass RealSpeedData (<RealSpeedData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RealSpeedData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RealSpeedData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<RealSpeedData> is deprecated: use BaseNode-msg:RealSpeedData instead.")))

(cl:ensure-generic-function 'left_control_value-val :lambda-list '(m))
(cl:defmethod left_control_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:left_control_value-val is deprecated.  Use BaseNode-msg:left_control_value instead.")
  (left_control_value m))

(cl:ensure-generic-function 'left_error_value-val :lambda-list '(m))
(cl:defmethod left_error_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:left_error_value-val is deprecated.  Use BaseNode-msg:left_error_value instead.")
  (left_error_value m))

(cl:ensure-generic-function 'left_reference_speed_value-val :lambda-list '(m))
(cl:defmethod left_reference_speed_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:left_reference_speed_value-val is deprecated.  Use BaseNode-msg:left_reference_speed_value instead.")
  (left_reference_speed_value m))

(cl:ensure-generic-function 'left_real_speed_value-val :lambda-list '(m))
(cl:defmethod left_real_speed_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:left_real_speed_value-val is deprecated.  Use BaseNode-msg:left_real_speed_value instead.")
  (left_real_speed_value m))

(cl:ensure-generic-function 'left_output_PWM_value-val :lambda-list '(m))
(cl:defmethod left_output_PWM_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:left_output_PWM_value-val is deprecated.  Use BaseNode-msg:left_output_PWM_value instead.")
  (left_output_PWM_value m))

(cl:ensure-generic-function 'left_brake_value-val :lambda-list '(m))
(cl:defmethod left_brake_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:left_brake_value-val is deprecated.  Use BaseNode-msg:left_brake_value instead.")
  (left_brake_value m))

(cl:ensure-generic-function 'right_control_value-val :lambda-list '(m))
(cl:defmethod right_control_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:right_control_value-val is deprecated.  Use BaseNode-msg:right_control_value instead.")
  (right_control_value m))

(cl:ensure-generic-function 'right_error_value-val :lambda-list '(m))
(cl:defmethod right_error_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:right_error_value-val is deprecated.  Use BaseNode-msg:right_error_value instead.")
  (right_error_value m))

(cl:ensure-generic-function 'right_reference_speed_value-val :lambda-list '(m))
(cl:defmethod right_reference_speed_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:right_reference_speed_value-val is deprecated.  Use BaseNode-msg:right_reference_speed_value instead.")
  (right_reference_speed_value m))

(cl:ensure-generic-function 'right_real_speed_value-val :lambda-list '(m))
(cl:defmethod right_real_speed_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:right_real_speed_value-val is deprecated.  Use BaseNode-msg:right_real_speed_value instead.")
  (right_real_speed_value m))

(cl:ensure-generic-function 'right_output_PWM_value-val :lambda-list '(m))
(cl:defmethod right_output_PWM_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:right_output_PWM_value-val is deprecated.  Use BaseNode-msg:right_output_PWM_value instead.")
  (right_output_PWM_value m))

(cl:ensure-generic-function 'right_brake_value-val :lambda-list '(m))
(cl:defmethod right_brake_value-val ((m <RealSpeedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:right_brake_value-val is deprecated.  Use BaseNode-msg:right_brake_value instead.")
  (right_brake_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RealSpeedData>) ostream)
  "Serializes a message object of type '<RealSpeedData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_control_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_error_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_reference_speed_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_real_speed_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_output_PWM_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_brake_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_control_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_error_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_reference_speed_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_real_speed_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_output_PWM_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_brake_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RealSpeedData>) istream)
  "Deserializes a message object of type '<RealSpeedData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_control_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_error_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_reference_speed_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_real_speed_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_output_PWM_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_brake_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_control_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_error_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_reference_speed_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_real_speed_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_output_PWM_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_brake_value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RealSpeedData>)))
  "Returns string type for a message object of type '<RealSpeedData>"
  "BaseNode/RealSpeedData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RealSpeedData)))
  "Returns string type for a message object of type 'RealSpeedData"
  "BaseNode/RealSpeedData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RealSpeedData>)))
  "Returns md5sum for a message object of type '<RealSpeedData>"
  "af4042522846a38590d01848f45d1cda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RealSpeedData)))
  "Returns md5sum for a message object of type 'RealSpeedData"
  "af4042522846a38590d01848f45d1cda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RealSpeedData>)))
  "Returns full string definition for message of type '<RealSpeedData>"
  (cl:format cl:nil "float32 left_control_value~%float32 left_error_value~%float32 left_reference_speed_value~%float32 left_real_speed_value~%float32 left_output_PWM_value~%float32 left_brake_value~%float32 right_control_value~%float32 right_error_value~%float32 right_reference_speed_value~%float32 right_real_speed_value~%float32 right_output_PWM_value~%float32 right_brake_value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RealSpeedData)))
  "Returns full string definition for message of type 'RealSpeedData"
  (cl:format cl:nil "float32 left_control_value~%float32 left_error_value~%float32 left_reference_speed_value~%float32 left_real_speed_value~%float32 left_output_PWM_value~%float32 left_brake_value~%float32 right_control_value~%float32 right_error_value~%float32 right_reference_speed_value~%float32 right_real_speed_value~%float32 right_output_PWM_value~%float32 right_brake_value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RealSpeedData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RealSpeedData>))
  "Converts a ROS message object to a list"
  (cl:list 'RealSpeedData
    (cl:cons ':left_control_value (left_control_value msg))
    (cl:cons ':left_error_value (left_error_value msg))
    (cl:cons ':left_reference_speed_value (left_reference_speed_value msg))
    (cl:cons ':left_real_speed_value (left_real_speed_value msg))
    (cl:cons ':left_output_PWM_value (left_output_PWM_value msg))
    (cl:cons ':left_brake_value (left_brake_value msg))
    (cl:cons ':right_control_value (right_control_value msg))
    (cl:cons ':right_error_value (right_error_value msg))
    (cl:cons ':right_reference_speed_value (right_reference_speed_value msg))
    (cl:cons ':right_real_speed_value (right_real_speed_value msg))
    (cl:cons ':right_output_PWM_value (right_output_PWM_value msg))
    (cl:cons ':right_brake_value (right_brake_value msg))
))
