; Auto-generated. Do not edit!


(cl:in-package simple_navigation_goals-srv)


;//! \htmlinclude multi_point-request.msg.html

(cl:defclass <multi_point-request> (roslisp-msg-protocol:ros-message)
  ((x_goal
    :reader x_goal
    :initarg :x_goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y_goal
    :reader y_goal
    :initarg :y_goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (theta_goal
    :reader theta_goal
    :initarg :theta_goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sec_goal
    :reader sec_goal
    :initarg :sec_goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass multi_point-request (<multi_point-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multi_point-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multi_point-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_navigation_goals-srv:<multi_point-request> is deprecated: use simple_navigation_goals-srv:multi_point-request instead.")))

(cl:ensure-generic-function 'x_goal-val :lambda-list '(m))
(cl:defmethod x_goal-val ((m <multi_point-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_navigation_goals-srv:x_goal-val is deprecated.  Use simple_navigation_goals-srv:x_goal instead.")
  (x_goal m))

(cl:ensure-generic-function 'y_goal-val :lambda-list '(m))
(cl:defmethod y_goal-val ((m <multi_point-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_navigation_goals-srv:y_goal-val is deprecated.  Use simple_navigation_goals-srv:y_goal instead.")
  (y_goal m))

(cl:ensure-generic-function 'theta_goal-val :lambda-list '(m))
(cl:defmethod theta_goal-val ((m <multi_point-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_navigation_goals-srv:theta_goal-val is deprecated.  Use simple_navigation_goals-srv:theta_goal instead.")
  (theta_goal m))

(cl:ensure-generic-function 'sec_goal-val :lambda-list '(m))
(cl:defmethod sec_goal-val ((m <multi_point-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_navigation_goals-srv:sec_goal-val is deprecated.  Use simple_navigation_goals-srv:sec_goal instead.")
  (sec_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multi_point-request>) ostream)
  "Serializes a message object of type '<multi_point-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x_goal))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'y_goal))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'theta_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'theta_goal))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sec_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'sec_goal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multi_point-request>) istream)
  "Deserializes a message object of type '<multi_point-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x_goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x_goal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y_goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y_goal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'theta_goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'theta_goal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sec_goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sec_goal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multi_point-request>)))
  "Returns string type for a service object of type '<multi_point-request>"
  "simple_navigation_goals/multi_pointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multi_point-request)))
  "Returns string type for a service object of type 'multi_point-request"
  "simple_navigation_goals/multi_pointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multi_point-request>)))
  "Returns md5sum for a message object of type '<multi_point-request>"
  "b704f6ee097e81a8f91ed62b6e798c5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multi_point-request)))
  "Returns md5sum for a message object of type 'multi_point-request"
  "b704f6ee097e81a8f91ed62b6e798c5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multi_point-request>)))
  "Returns full string definition for message of type '<multi_point-request>"
  (cl:format cl:nil "float32[] x_goal~%float32[] y_goal~%float32[] theta_goal~%float32[] sec_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multi_point-request)))
  "Returns full string definition for message of type 'multi_point-request"
  (cl:format cl:nil "float32[] x_goal~%float32[] y_goal~%float32[] theta_goal~%float32[] sec_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multi_point-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x_goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y_goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'theta_goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sec_goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multi_point-request>))
  "Converts a ROS message object to a list"
  (cl:list 'multi_point-request
    (cl:cons ':x_goal (x_goal msg))
    (cl:cons ':y_goal (y_goal msg))
    (cl:cons ':theta_goal (theta_goal msg))
    (cl:cons ':sec_goal (sec_goal msg))
))
;//! \htmlinclude multi_point-response.msg.html

(cl:defclass <multi_point-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass multi_point-response (<multi_point-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multi_point-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multi_point-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_navigation_goals-srv:<multi_point-response> is deprecated: use simple_navigation_goals-srv:multi_point-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multi_point-response>) ostream)
  "Serializes a message object of type '<multi_point-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multi_point-response>) istream)
  "Deserializes a message object of type '<multi_point-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multi_point-response>)))
  "Returns string type for a service object of type '<multi_point-response>"
  "simple_navigation_goals/multi_pointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multi_point-response)))
  "Returns string type for a service object of type 'multi_point-response"
  "simple_navigation_goals/multi_pointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multi_point-response>)))
  "Returns md5sum for a message object of type '<multi_point-response>"
  "b704f6ee097e81a8f91ed62b6e798c5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multi_point-response)))
  "Returns md5sum for a message object of type 'multi_point-response"
  "b704f6ee097e81a8f91ed62b6e798c5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multi_point-response>)))
  "Returns full string definition for message of type '<multi_point-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multi_point-response)))
  "Returns full string definition for message of type 'multi_point-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multi_point-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multi_point-response>))
  "Converts a ROS message object to a list"
  (cl:list 'multi_point-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'multi_point)))
  'multi_point-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'multi_point)))
  'multi_point-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multi_point)))
  "Returns string type for a service object of type '<multi_point>"
  "simple_navigation_goals/multi_point")