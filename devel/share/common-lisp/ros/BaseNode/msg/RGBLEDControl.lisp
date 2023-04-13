; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude RGBLEDControl.msg.html

(cl:defclass <RGBLEDControl> (roslisp-msg-protocol:ros-message)
  ((start_red
    :reader start_red
    :initarg :start_red
    :type cl:fixnum
    :initform 0)
   (start_green
    :reader start_green
    :initarg :start_green
    :type cl:fixnum
    :initform 0)
   (start_blue
    :reader start_blue
    :initarg :start_blue
    :type cl:fixnum
    :initform 0)
   (end_red
    :reader end_red
    :initarg :end_red
    :type cl:fixnum
    :initform 0)
   (end_green
    :reader end_green
    :initarg :end_green
    :type cl:fixnum
    :initform 0)
   (end_blue
    :reader end_blue
    :initarg :end_blue
    :type cl:fixnum
    :initform 0)
   (transform_time
    :reader transform_time
    :initarg :transform_time
    :type cl:float
    :initform 0.0)
   (run_time
    :reader run_time
    :initarg :run_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass RGBLEDControl (<RGBLEDControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGBLEDControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGBLEDControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<RGBLEDControl> is deprecated: use BaseNode-msg:RGBLEDControl instead.")))

(cl:ensure-generic-function 'start_red-val :lambda-list '(m))
(cl:defmethod start_red-val ((m <RGBLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:start_red-val is deprecated.  Use BaseNode-msg:start_red instead.")
  (start_red m))

(cl:ensure-generic-function 'start_green-val :lambda-list '(m))
(cl:defmethod start_green-val ((m <RGBLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:start_green-val is deprecated.  Use BaseNode-msg:start_green instead.")
  (start_green m))

(cl:ensure-generic-function 'start_blue-val :lambda-list '(m))
(cl:defmethod start_blue-val ((m <RGBLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:start_blue-val is deprecated.  Use BaseNode-msg:start_blue instead.")
  (start_blue m))

(cl:ensure-generic-function 'end_red-val :lambda-list '(m))
(cl:defmethod end_red-val ((m <RGBLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:end_red-val is deprecated.  Use BaseNode-msg:end_red instead.")
  (end_red m))

(cl:ensure-generic-function 'end_green-val :lambda-list '(m))
(cl:defmethod end_green-val ((m <RGBLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:end_green-val is deprecated.  Use BaseNode-msg:end_green instead.")
  (end_green m))

(cl:ensure-generic-function 'end_blue-val :lambda-list '(m))
(cl:defmethod end_blue-val ((m <RGBLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:end_blue-val is deprecated.  Use BaseNode-msg:end_blue instead.")
  (end_blue m))

(cl:ensure-generic-function 'transform_time-val :lambda-list '(m))
(cl:defmethod transform_time-val ((m <RGBLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:transform_time-val is deprecated.  Use BaseNode-msg:transform_time instead.")
  (transform_time m))

(cl:ensure-generic-function 'run_time-val :lambda-list '(m))
(cl:defmethod run_time-val ((m <RGBLEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:run_time-val is deprecated.  Use BaseNode-msg:run_time instead.")
  (run_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGBLEDControl>) ostream)
  "Serializes a message object of type '<RGBLEDControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_red)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_green)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_blue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_red)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_green)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_blue)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'transform_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'run_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGBLEDControl>) istream)
  "Deserializes a message object of type '<RGBLEDControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_red)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_green)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_blue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_red)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_green)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_blue)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'transform_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'run_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGBLEDControl>)))
  "Returns string type for a message object of type '<RGBLEDControl>"
  "BaseNode/RGBLEDControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGBLEDControl)))
  "Returns string type for a message object of type 'RGBLEDControl"
  "BaseNode/RGBLEDControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGBLEDControl>)))
  "Returns md5sum for a message object of type '<RGBLEDControl>"
  "4096ab5b30b2048afde4d3c5779fe493")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGBLEDControl)))
  "Returns md5sum for a message object of type 'RGBLEDControl"
  "4096ab5b30b2048afde4d3c5779fe493")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGBLEDControl>)))
  "Returns full string definition for message of type '<RGBLEDControl>"
  (cl:format cl:nil "uint8 start_red~%uint8 start_green~%uint8 start_blue~%uint8 end_red~%uint8 end_green~%uint8 end_blue~%float32 transform_time ~%float32 run_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGBLEDControl)))
  "Returns full string definition for message of type 'RGBLEDControl"
  (cl:format cl:nil "uint8 start_red~%uint8 start_green~%uint8 start_blue~%uint8 end_red~%uint8 end_green~%uint8 end_blue~%float32 transform_time ~%float32 run_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGBLEDControl>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGBLEDControl>))
  "Converts a ROS message object to a list"
  (cl:list 'RGBLEDControl
    (cl:cons ':start_red (start_red msg))
    (cl:cons ':start_green (start_green msg))
    (cl:cons ':start_blue (start_blue msg))
    (cl:cons ':end_red (end_red msg))
    (cl:cons ':end_green (end_green msg))
    (cl:cons ':end_blue (end_blue msg))
    (cl:cons ':transform_time (transform_time msg))
    (cl:cons ':run_time (run_time msg))
))
