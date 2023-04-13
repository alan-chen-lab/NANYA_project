; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude IrDockReport.msg.html

(cl:defclass <IrDockReport> (roslisp-msg-protocol:ros-message)
  ((ir_left
    :reader ir_left
    :initarg :ir_left
    :type cl:string
    :initform "")
   (ir_right
    :reader ir_right
    :initarg :ir_right
    :type cl:string
    :initform "")
   (ir_left_stat
    :reader ir_left_stat
    :initarg :ir_left_stat
    :type cl:integer
    :initform 0)
   (ir_right_stat
    :reader ir_right_stat
    :initarg :ir_right_stat
    :type cl:integer
    :initform 0))
)

(cl:defclass IrDockReport (<IrDockReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IrDockReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IrDockReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<IrDockReport> is deprecated: use BaseNode-msg:IrDockReport instead.")))

(cl:ensure-generic-function 'ir_left-val :lambda-list '(m))
(cl:defmethod ir_left-val ((m <IrDockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:ir_left-val is deprecated.  Use BaseNode-msg:ir_left instead.")
  (ir_left m))

(cl:ensure-generic-function 'ir_right-val :lambda-list '(m))
(cl:defmethod ir_right-val ((m <IrDockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:ir_right-val is deprecated.  Use BaseNode-msg:ir_right instead.")
  (ir_right m))

(cl:ensure-generic-function 'ir_left_stat-val :lambda-list '(m))
(cl:defmethod ir_left_stat-val ((m <IrDockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:ir_left_stat-val is deprecated.  Use BaseNode-msg:ir_left_stat instead.")
  (ir_left_stat m))

(cl:ensure-generic-function 'ir_right_stat-val :lambda-list '(m))
(cl:defmethod ir_right_stat-val ((m <IrDockReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:ir_right_stat-val is deprecated.  Use BaseNode-msg:ir_right_stat instead.")
  (ir_right_stat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IrDockReport>) ostream)
  "Serializes a message object of type '<IrDockReport>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ir_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ir_left))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ir_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ir_right))
  (cl:let* ((signed (cl:slot-value msg 'ir_left_stat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ir_right_stat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IrDockReport>) istream)
  "Deserializes a message object of type '<IrDockReport>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ir_left) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ir_left) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ir_right) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ir_right) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ir_left_stat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ir_right_stat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IrDockReport>)))
  "Returns string type for a message object of type '<IrDockReport>"
  "BaseNode/IrDockReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IrDockReport)))
  "Returns string type for a message object of type 'IrDockReport"
  "BaseNode/IrDockReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IrDockReport>)))
  "Returns md5sum for a message object of type '<IrDockReport>"
  "466bf0cbbf6c657c56a3177353abfb08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IrDockReport)))
  "Returns md5sum for a message object of type 'IrDockReport"
  "466bf0cbbf6c657c56a3177353abfb08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IrDockReport>)))
  "Returns full string definition for message of type '<IrDockReport>"
  (cl:format cl:nil "string ir_left~%string ir_right~%int32 ir_left_stat~%int32 ir_right_stat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IrDockReport)))
  "Returns full string definition for message of type 'IrDockReport"
  (cl:format cl:nil "string ir_left~%string ir_right~%int32 ir_left_stat~%int32 ir_right_stat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IrDockReport>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ir_left))
     4 (cl:length (cl:slot-value msg 'ir_right))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IrDockReport>))
  "Converts a ROS message object to a list"
  (cl:list 'IrDockReport
    (cl:cons ':ir_left (ir_left msg))
    (cl:cons ':ir_right (ir_right msg))
    (cl:cons ':ir_left_stat (ir_left_stat msg))
    (cl:cons ':ir_right_stat (ir_right_stat msg))
))
