; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude SonicReport.msg.html

(cl:defclass <SonicReport> (roslisp-msg-protocol:ros-message)
  ((sonic_too_close
    :reader sonic_too_close
    :initarg :sonic_too_close
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass SonicReport (<SonicReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonicReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonicReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<SonicReport> is deprecated: use BaseNode-msg:SonicReport instead.")))

(cl:ensure-generic-function 'sonic_too_close-val :lambda-list '(m))
(cl:defmethod sonic_too_close-val ((m <SonicReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:sonic_too_close-val is deprecated.  Use BaseNode-msg:sonic_too_close instead.")
  (sonic_too_close m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonicReport>) ostream)
  "Serializes a message object of type '<SonicReport>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sonic_too_close))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'sonic_too_close))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonicReport>) istream)
  "Deserializes a message object of type '<SonicReport>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sonic_too_close) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sonic_too_close)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonicReport>)))
  "Returns string type for a message object of type '<SonicReport>"
  "BaseNode/SonicReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonicReport)))
  "Returns string type for a message object of type 'SonicReport"
  "BaseNode/SonicReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonicReport>)))
  "Returns md5sum for a message object of type '<SonicReport>"
  "2e85b346da5a184206999e10ccebec12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonicReport)))
  "Returns md5sum for a message object of type 'SonicReport"
  "2e85b346da5a184206999e10ccebec12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonicReport>)))
  "Returns full string definition for message of type '<SonicReport>"
  (cl:format cl:nil "bool[] sonic_too_close~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonicReport)))
  "Returns full string definition for message of type 'SonicReport"
  (cl:format cl:nil "bool[] sonic_too_close~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonicReport>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sonic_too_close) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonicReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SonicReport
    (cl:cons ':sonic_too_close (sonic_too_close msg))
))
