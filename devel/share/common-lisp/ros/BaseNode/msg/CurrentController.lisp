; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude CurrentController.msg.html

(cl:defclass <CurrentController> (roslisp-msg-protocol:ros-message)
  ((current_controller
    :reader current_controller
    :initarg :current_controller
    :type cl:string
    :initform "")
   (current_action
    :reader current_action
    :initarg :current_action
    :type cl:string
    :initform "")
   (current_controller_priority
    :reader current_controller_priority
    :initarg :current_controller_priority
    :type cl:integer
    :initform 0)
   (current_action_priority
    :reader current_action_priority
    :initarg :current_action_priority
    :type cl:integer
    :initform 0))
)

(cl:defclass CurrentController (<CurrentController>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentController>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentController)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<CurrentController> is deprecated: use BaseNode-msg:CurrentController instead.")))

(cl:ensure-generic-function 'current_controller-val :lambda-list '(m))
(cl:defmethod current_controller-val ((m <CurrentController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:current_controller-val is deprecated.  Use BaseNode-msg:current_controller instead.")
  (current_controller m))

(cl:ensure-generic-function 'current_action-val :lambda-list '(m))
(cl:defmethod current_action-val ((m <CurrentController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:current_action-val is deprecated.  Use BaseNode-msg:current_action instead.")
  (current_action m))

(cl:ensure-generic-function 'current_controller_priority-val :lambda-list '(m))
(cl:defmethod current_controller_priority-val ((m <CurrentController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:current_controller_priority-val is deprecated.  Use BaseNode-msg:current_controller_priority instead.")
  (current_controller_priority m))

(cl:ensure-generic-function 'current_action_priority-val :lambda-list '(m))
(cl:defmethod current_action_priority-val ((m <CurrentController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:current_action_priority-val is deprecated.  Use BaseNode-msg:current_action_priority instead.")
  (current_action_priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentController>) ostream)
  "Serializes a message object of type '<CurrentController>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_controller))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_controller))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_action))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_controller_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_controller_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_controller_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_controller_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'current_controller_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'current_controller_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'current_controller_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'current_controller_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_action_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_action_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_action_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_action_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'current_action_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'current_action_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'current_action_priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'current_action_priority)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentController>) istream)
  "Deserializes a message object of type '<CurrentController>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_controller) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_controller) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_controller_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_controller_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_controller_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_controller_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'current_controller_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'current_controller_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'current_controller_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'current_controller_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_action_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_action_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_action_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_action_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'current_action_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'current_action_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'current_action_priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'current_action_priority)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentController>)))
  "Returns string type for a message object of type '<CurrentController>"
  "BaseNode/CurrentController")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentController)))
  "Returns string type for a message object of type 'CurrentController"
  "BaseNode/CurrentController")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentController>)))
  "Returns md5sum for a message object of type '<CurrentController>"
  "ddc6babeedae6888528de73484291c2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentController)))
  "Returns md5sum for a message object of type 'CurrentController"
  "ddc6babeedae6888528de73484291c2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentController>)))
  "Returns full string definition for message of type '<CurrentController>"
  (cl:format cl:nil "string current_controller~%string current_action~%uint64 current_controller_priority~%uint64 current_action_priority~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentController)))
  "Returns full string definition for message of type 'CurrentController"
  (cl:format cl:nil "string current_controller~%string current_action~%uint64 current_controller_priority~%uint64 current_action_priority~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentController>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_controller))
     4 (cl:length (cl:slot-value msg 'current_action))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentController>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentController
    (cl:cons ':current_controller (current_controller msg))
    (cl:cons ':current_action (current_action msg))
    (cl:cons ':current_controller_priority (current_controller_priority msg))
    (cl:cons ':current_action_priority (current_action_priority msg))
))
