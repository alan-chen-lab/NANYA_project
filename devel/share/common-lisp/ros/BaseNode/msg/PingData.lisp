; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude PingData.msg.html

(cl:defclass <PingData> (roslisp-msg-protocol:ros-message)
  ((pingSN
    :reader pingSN
    :initarg :pingSN
    :type cl:string
    :initform "")
   (firmwareVer
    :reader firmwareVer
    :initarg :firmwareVer
    :type cl:string
    :initform "")
   (deviceID
    :reader deviceID
    :initarg :deviceID
    :type cl:string
    :initform "")
   (day_
    :reader day_
    :initarg :day_
    :type cl:integer
    :initform 0)
   (hour_
    :reader hour_
    :initarg :hour_
    :type cl:integer
    :initform 0)
   (min_
    :reader min_
    :initarg :min_
    :type cl:integer
    :initform 0))
)

(cl:defclass PingData (<PingData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<PingData> is deprecated: use BaseNode-msg:PingData instead.")))

(cl:ensure-generic-function 'pingSN-val :lambda-list '(m))
(cl:defmethod pingSN-val ((m <PingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:pingSN-val is deprecated.  Use BaseNode-msg:pingSN instead.")
  (pingSN m))

(cl:ensure-generic-function 'firmwareVer-val :lambda-list '(m))
(cl:defmethod firmwareVer-val ((m <PingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:firmwareVer-val is deprecated.  Use BaseNode-msg:firmwareVer instead.")
  (firmwareVer m))

(cl:ensure-generic-function 'deviceID-val :lambda-list '(m))
(cl:defmethod deviceID-val ((m <PingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:deviceID-val is deprecated.  Use BaseNode-msg:deviceID instead.")
  (deviceID m))

(cl:ensure-generic-function 'day_-val :lambda-list '(m))
(cl:defmethod day_-val ((m <PingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:day_-val is deprecated.  Use BaseNode-msg:day_ instead.")
  (day_ m))

(cl:ensure-generic-function 'hour_-val :lambda-list '(m))
(cl:defmethod hour_-val ((m <PingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:hour_-val is deprecated.  Use BaseNode-msg:hour_ instead.")
  (hour_ m))

(cl:ensure-generic-function 'min_-val :lambda-list '(m))
(cl:defmethod min_-val ((m <PingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:min_-val is deprecated.  Use BaseNode-msg:min_ instead.")
  (min_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingData>) ostream)
  "Serializes a message object of type '<PingData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pingSN))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pingSN))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmwareVer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmwareVer))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'deviceID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'deviceID))
  (cl:let* ((signed (cl:slot-value msg 'day_)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hour_)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'min_)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingData>) istream)
  "Deserializes a message object of type '<PingData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pingSN) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pingSN) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmwareVer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmwareVer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deviceID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'deviceID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'day_) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hour_) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'min_) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingData>)))
  "Returns string type for a message object of type '<PingData>"
  "BaseNode/PingData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingData)))
  "Returns string type for a message object of type 'PingData"
  "BaseNode/PingData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingData>)))
  "Returns md5sum for a message object of type '<PingData>"
  "b9701021a69e4fdf80bdc15797b522e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingData)))
  "Returns md5sum for a message object of type 'PingData"
  "b9701021a69e4fdf80bdc15797b522e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingData>)))
  "Returns full string definition for message of type '<PingData>"
  (cl:format cl:nil "string pingSN~%string firmwareVer~%string deviceID~%int32 day_~%int32 hour_~%int32 min_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingData)))
  "Returns full string definition for message of type 'PingData"
  (cl:format cl:nil "string pingSN~%string firmwareVer~%string deviceID~%int32 day_~%int32 hour_~%int32 min_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pingSN))
     4 (cl:length (cl:slot-value msg 'firmwareVer))
     4 (cl:length (cl:slot-value msg 'deviceID))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingData>))
  "Converts a ROS message object to a list"
  (cl:list 'PingData
    (cl:cons ':pingSN (pingSN msg))
    (cl:cons ':firmwareVer (firmwareVer msg))
    (cl:cons ':deviceID (deviceID msg))
    (cl:cons ':day_ (day_ msg))
    (cl:cons ':hour_ (hour_ msg))
    (cl:cons ':min_ (min_ msg))
))
