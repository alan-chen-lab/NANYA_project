; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude AutoDockStatus.msg.html

(cl:defclass <AutoDockStatus> (roslisp-msg-protocol:ros-message)
  ((charge_status
    :reader charge_status
    :initarg :charge_status
    :type cl:integer
    :initform 0)
   (charge_stat_1
    :reader charge_stat_1
    :initarg :charge_stat_1
    :type cl:integer
    :initform 0)
   (charge_stat_2
    :reader charge_stat_2
    :initarg :charge_stat_2
    :type cl:integer
    :initform 0)
   (charge_dock_up
    :reader charge_dock_up
    :initarg :charge_dock_up
    :type cl:integer
    :initform 0)
   (dock_error_message
    :reader dock_error_message
    :initarg :dock_error_message
    :type cl:integer
    :initform 0))
)

(cl:defclass AutoDockStatus (<AutoDockStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDockStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDockStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<AutoDockStatus> is deprecated: use BaseNode-msg:AutoDockStatus instead.")))

(cl:ensure-generic-function 'charge_status-val :lambda-list '(m))
(cl:defmethod charge_status-val ((m <AutoDockStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:charge_status-val is deprecated.  Use BaseNode-msg:charge_status instead.")
  (charge_status m))

(cl:ensure-generic-function 'charge_stat_1-val :lambda-list '(m))
(cl:defmethod charge_stat_1-val ((m <AutoDockStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:charge_stat_1-val is deprecated.  Use BaseNode-msg:charge_stat_1 instead.")
  (charge_stat_1 m))

(cl:ensure-generic-function 'charge_stat_2-val :lambda-list '(m))
(cl:defmethod charge_stat_2-val ((m <AutoDockStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:charge_stat_2-val is deprecated.  Use BaseNode-msg:charge_stat_2 instead.")
  (charge_stat_2 m))

(cl:ensure-generic-function 'charge_dock_up-val :lambda-list '(m))
(cl:defmethod charge_dock_up-val ((m <AutoDockStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:charge_dock_up-val is deprecated.  Use BaseNode-msg:charge_dock_up instead.")
  (charge_dock_up m))

(cl:ensure-generic-function 'dock_error_message-val :lambda-list '(m))
(cl:defmethod dock_error_message-val ((m <AutoDockStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:dock_error_message-val is deprecated.  Use BaseNode-msg:dock_error_message instead.")
  (dock_error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDockStatus>) ostream)
  "Serializes a message object of type '<AutoDockStatus>"
  (cl:let* ((signed (cl:slot-value msg 'charge_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'charge_stat_1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'charge_stat_2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'charge_dock_up)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dock_error_message)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDockStatus>) istream)
  "Deserializes a message object of type '<AutoDockStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_stat_1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_stat_2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_dock_up) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dock_error_message) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDockStatus>)))
  "Returns string type for a message object of type '<AutoDockStatus>"
  "BaseNode/AutoDockStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDockStatus)))
  "Returns string type for a message object of type 'AutoDockStatus"
  "BaseNode/AutoDockStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDockStatus>)))
  "Returns md5sum for a message object of type '<AutoDockStatus>"
  "9901a3dd8e5c795bffd793bfc0e7fda6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDockStatus)))
  "Returns md5sum for a message object of type 'AutoDockStatus"
  "9901a3dd8e5c795bffd793bfc0e7fda6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDockStatus>)))
  "Returns full string definition for message of type '<AutoDockStatus>"
  (cl:format cl:nil "int32 charge_status~%int32 charge_stat_1~%int32 charge_stat_2~%int32 charge_dock_up~%int32 dock_error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDockStatus)))
  "Returns full string definition for message of type 'AutoDockStatus"
  (cl:format cl:nil "int32 charge_status~%int32 charge_stat_1~%int32 charge_stat_2~%int32 charge_dock_up~%int32 dock_error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDockStatus>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDockStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDockStatus
    (cl:cons ':charge_status (charge_status msg))
    (cl:cons ':charge_stat_1 (charge_stat_1 msg))
    (cl:cons ':charge_stat_2 (charge_stat_2 msg))
    (cl:cons ':charge_dock_up (charge_dock_up msg))
    (cl:cons ':dock_error_message (dock_error_message msg))
))
