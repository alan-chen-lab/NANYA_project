; Auto-generated. Do not edit!


(cl:in-package auto_charge_service-msg)


;//! \htmlinclude aurco_info.msg.html

(cl:defclass <aurco_info> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (get_aruco
    :reader get_aruco
    :initarg :get_aruco
    :type cl:boolean
    :initform cl:nil)
   (not_get_aruco
    :reader not_get_aruco
    :initarg :not_get_aruco
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass aurco_info (<aurco_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <aurco_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'aurco_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_charge_service-msg:<aurco_info> is deprecated: use auto_charge_service-msg:aurco_info instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <aurco_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-msg:x-val is deprecated.  Use auto_charge_service-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <aurco_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-msg:y-val is deprecated.  Use auto_charge_service-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <aurco_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-msg:z-val is deprecated.  Use auto_charge_service-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <aurco_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-msg:roll-val is deprecated.  Use auto_charge_service-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <aurco_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-msg:pitch-val is deprecated.  Use auto_charge_service-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <aurco_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-msg:yaw-val is deprecated.  Use auto_charge_service-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'get_aruco-val :lambda-list '(m))
(cl:defmethod get_aruco-val ((m <aurco_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-msg:get_aruco-val is deprecated.  Use auto_charge_service-msg:get_aruco instead.")
  (get_aruco m))

(cl:ensure-generic-function 'not_get_aruco-val :lambda-list '(m))
(cl:defmethod not_get_aruco-val ((m <aurco_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charge_service-msg:not_get_aruco-val is deprecated.  Use auto_charge_service-msg:not_get_aruco instead.")
  (not_get_aruco m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <aurco_info>) ostream)
  "Serializes a message object of type '<aurco_info>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_aruco) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'not_get_aruco) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <aurco_info>) istream)
  "Deserializes a message object of type '<aurco_info>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'get_aruco) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'not_get_aruco) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<aurco_info>)))
  "Returns string type for a message object of type '<aurco_info>"
  "auto_charge_service/aurco_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'aurco_info)))
  "Returns string type for a message object of type 'aurco_info"
  "auto_charge_service/aurco_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<aurco_info>)))
  "Returns md5sum for a message object of type '<aurco_info>"
  "8e734168b30b8d8c8907e55348fd895a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'aurco_info)))
  "Returns md5sum for a message object of type 'aurco_info"
  "8e734168b30b8d8c8907e55348fd895a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<aurco_info>)))
  "Returns full string definition for message of type '<aurco_info>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%~%float32 roll~%float32 pitch~%float32 yaw~%~%bool get_aruco~%bool not_get_aruco~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'aurco_info)))
  "Returns full string definition for message of type 'aurco_info"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%~%float32 roll~%float32 pitch~%float32 yaw~%~%bool get_aruco~%bool not_get_aruco~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <aurco_info>))
  (cl:+ 0
     8
     8
     8
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <aurco_info>))
  "Converts a ROS message object to a list"
  (cl:list 'aurco_info
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':get_aruco (get_aruco msg))
    (cl:cons ':not_get_aruco (not_get_aruco msg))
))
