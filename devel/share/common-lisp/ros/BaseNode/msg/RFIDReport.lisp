; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude RFIDReport.msg.html

(cl:defclass <RFIDReport> (roslisp-msg-protocol:ros-message)
  ((RFIDNo
    :reader RFIDNo
    :initarg :RFIDNo
    :type cl:string
    :initform "")
   (detect_status
    :reader detect_status
    :initarg :detect_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RFIDReport (<RFIDReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RFIDReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RFIDReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<RFIDReport> is deprecated: use BaseNode-msg:RFIDReport instead.")))

(cl:ensure-generic-function 'RFIDNo-val :lambda-list '(m))
(cl:defmethod RFIDNo-val ((m <RFIDReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:RFIDNo-val is deprecated.  Use BaseNode-msg:RFIDNo instead.")
  (RFIDNo m))

(cl:ensure-generic-function 'detect_status-val :lambda-list '(m))
(cl:defmethod detect_status-val ((m <RFIDReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:detect_status-val is deprecated.  Use BaseNode-msg:detect_status instead.")
  (detect_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RFIDReport>) ostream)
  "Serializes a message object of type '<RFIDReport>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'RFIDNo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'RFIDNo))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detect_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RFIDReport>) istream)
  "Deserializes a message object of type '<RFIDReport>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RFIDNo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'RFIDNo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'detect_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RFIDReport>)))
  "Returns string type for a message object of type '<RFIDReport>"
  "BaseNode/RFIDReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RFIDReport)))
  "Returns string type for a message object of type 'RFIDReport"
  "BaseNode/RFIDReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RFIDReport>)))
  "Returns md5sum for a message object of type '<RFIDReport>"
  "8f5274ec60f335c39997a38a6d19ff0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RFIDReport)))
  "Returns md5sum for a message object of type 'RFIDReport"
  "8f5274ec60f335c39997a38a6d19ff0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RFIDReport>)))
  "Returns full string definition for message of type '<RFIDReport>"
  (cl:format cl:nil "string RFIDNo~%bool detect_status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RFIDReport)))
  "Returns full string definition for message of type 'RFIDReport"
  (cl:format cl:nil "string RFIDNo~%bool detect_status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RFIDReport>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'RFIDNo))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RFIDReport>))
  "Converts a ROS message object to a list"
  (cl:list 'RFIDReport
    (cl:cons ':RFIDNo (RFIDNo msg))
    (cl:cons ':detect_status (detect_status msg))
))
