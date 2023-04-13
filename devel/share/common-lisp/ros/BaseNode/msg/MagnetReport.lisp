; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude MagnetReport.msg.html

(cl:defclass <MagnetReport> (roslisp-msg-protocol:ros-message)
  ((cell
    :reader cell
    :initarg :cell
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass MagnetReport (<MagnetReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagnetReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagnetReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<MagnetReport> is deprecated: use BaseNode-msg:MagnetReport instead.")))

(cl:ensure-generic-function 'cell-val :lambda-list '(m))
(cl:defmethod cell-val ((m <MagnetReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:cell-val is deprecated.  Use BaseNode-msg:cell instead.")
  (cell m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagnetReport>) ostream)
  "Serializes a message object of type '<MagnetReport>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cell))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'cell))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagnetReport>) istream)
  "Deserializes a message object of type '<MagnetReport>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cell) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cell)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagnetReport>)))
  "Returns string type for a message object of type '<MagnetReport>"
  "BaseNode/MagnetReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagnetReport)))
  "Returns string type for a message object of type 'MagnetReport"
  "BaseNode/MagnetReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagnetReport>)))
  "Returns md5sum for a message object of type '<MagnetReport>"
  "e9f73b0509699f216ff940c7a6e46e63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagnetReport)))
  "Returns md5sum for a message object of type 'MagnetReport"
  "e9f73b0509699f216ff940c7a6e46e63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagnetReport>)))
  "Returns full string definition for message of type '<MagnetReport>"
  (cl:format cl:nil "bool[] cell~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagnetReport)))
  "Returns full string definition for message of type 'MagnetReport"
  (cl:format cl:nil "bool[] cell~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagnetReport>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cell) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagnetReport>))
  "Converts a ROS message object to a list"
  (cl:list 'MagnetReport
    (cl:cons ':cell (cell msg))
))
