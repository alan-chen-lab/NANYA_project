; Auto-generated. Do not edit!


(cl:in-package BaseNode-srv)


;//! \htmlinclude SetObstacleDistance-request.msg.html

(cl:defclass <SetObstacleDistance-request> (roslisp-msg-protocol:ros-message)
  ((USDis0
    :reader USDis0
    :initarg :USDis0
    :type cl:fixnum
    :initform 0)
   (USDis1
    :reader USDis1
    :initarg :USDis1
    :type cl:fixnum
    :initform 0)
   (USDis2
    :reader USDis2
    :initarg :USDis2
    :type cl:fixnum
    :initform 0)
   (USDis3
    :reader USDis3
    :initarg :USDis3
    :type cl:fixnum
    :initform 0)
   (USDis4
    :reader USDis4
    :initarg :USDis4
    :type cl:fixnum
    :initform 0)
   (USDis5
    :reader USDis5
    :initarg :USDis5
    :type cl:fixnum
    :initform 0)
   (USDis6
    :reader USDis6
    :initarg :USDis6
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetObstacleDistance-request (<SetObstacleDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObstacleDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObstacleDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-srv:<SetObstacleDistance-request> is deprecated: use BaseNode-srv:SetObstacleDistance-request instead.")))

(cl:ensure-generic-function 'USDis0-val :lambda-list '(m))
(cl:defmethod USDis0-val ((m <SetObstacleDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:USDis0-val is deprecated.  Use BaseNode-srv:USDis0 instead.")
  (USDis0 m))

(cl:ensure-generic-function 'USDis1-val :lambda-list '(m))
(cl:defmethod USDis1-val ((m <SetObstacleDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:USDis1-val is deprecated.  Use BaseNode-srv:USDis1 instead.")
  (USDis1 m))

(cl:ensure-generic-function 'USDis2-val :lambda-list '(m))
(cl:defmethod USDis2-val ((m <SetObstacleDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:USDis2-val is deprecated.  Use BaseNode-srv:USDis2 instead.")
  (USDis2 m))

(cl:ensure-generic-function 'USDis3-val :lambda-list '(m))
(cl:defmethod USDis3-val ((m <SetObstacleDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:USDis3-val is deprecated.  Use BaseNode-srv:USDis3 instead.")
  (USDis3 m))

(cl:ensure-generic-function 'USDis4-val :lambda-list '(m))
(cl:defmethod USDis4-val ((m <SetObstacleDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:USDis4-val is deprecated.  Use BaseNode-srv:USDis4 instead.")
  (USDis4 m))

(cl:ensure-generic-function 'USDis5-val :lambda-list '(m))
(cl:defmethod USDis5-val ((m <SetObstacleDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:USDis5-val is deprecated.  Use BaseNode-srv:USDis5 instead.")
  (USDis5 m))

(cl:ensure-generic-function 'USDis6-val :lambda-list '(m))
(cl:defmethod USDis6-val ((m <SetObstacleDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:USDis6-val is deprecated.  Use BaseNode-srv:USDis6 instead.")
  (USDis6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObstacleDistance-request>) ostream)
  "Serializes a message object of type '<SetObstacleDistance-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis6)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObstacleDistance-request>) istream)
  "Deserializes a message object of type '<SetObstacleDistance-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'USDis6)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObstacleDistance-request>)))
  "Returns string type for a service object of type '<SetObstacleDistance-request>"
  "BaseNode/SetObstacleDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacleDistance-request)))
  "Returns string type for a service object of type 'SetObstacleDistance-request"
  "BaseNode/SetObstacleDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObstacleDistance-request>)))
  "Returns md5sum for a message object of type '<SetObstacleDistance-request>"
  "744c1032f68198df9c2b4b2ede38d155")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObstacleDistance-request)))
  "Returns md5sum for a message object of type 'SetObstacleDistance-request"
  "744c1032f68198df9c2b4b2ede38d155")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObstacleDistance-request>)))
  "Returns full string definition for message of type '<SetObstacleDistance-request>"
  (cl:format cl:nil "uint8 USDis0~%uint8 USDis1~%uint8 USDis2~%uint8 USDis3~%uint8 USDis4~%uint8 USDis5~%uint8 USDis6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObstacleDistance-request)))
  "Returns full string definition for message of type 'SetObstacleDistance-request"
  (cl:format cl:nil "uint8 USDis0~%uint8 USDis1~%uint8 USDis2~%uint8 USDis3~%uint8 USDis4~%uint8 USDis5~%uint8 USDis6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObstacleDistance-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObstacleDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObstacleDistance-request
    (cl:cons ':USDis0 (USDis0 msg))
    (cl:cons ':USDis1 (USDis1 msg))
    (cl:cons ':USDis2 (USDis2 msg))
    (cl:cons ':USDis3 (USDis3 msg))
    (cl:cons ':USDis4 (USDis4 msg))
    (cl:cons ':USDis5 (USDis5 msg))
    (cl:cons ':USDis6 (USDis6 msg))
))
;//! \htmlinclude SetObstacleDistance-response.msg.html

(cl:defclass <SetObstacleDistance-response> (roslisp-msg-protocol:ros-message)
  ((Success
    :reader Success
    :initarg :Success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetObstacleDistance-response (<SetObstacleDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObstacleDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObstacleDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-srv:<SetObstacleDistance-response> is deprecated: use BaseNode-srv:SetObstacleDistance-response instead.")))

(cl:ensure-generic-function 'Success-val :lambda-list '(m))
(cl:defmethod Success-val ((m <SetObstacleDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:Success-val is deprecated.  Use BaseNode-srv:Success instead.")
  (Success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObstacleDistance-response>) ostream)
  "Serializes a message object of type '<SetObstacleDistance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObstacleDistance-response>) istream)
  "Deserializes a message object of type '<SetObstacleDistance-response>"
    (cl:setf (cl:slot-value msg 'Success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObstacleDistance-response>)))
  "Returns string type for a service object of type '<SetObstacleDistance-response>"
  "BaseNode/SetObstacleDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacleDistance-response)))
  "Returns string type for a service object of type 'SetObstacleDistance-response"
  "BaseNode/SetObstacleDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObstacleDistance-response>)))
  "Returns md5sum for a message object of type '<SetObstacleDistance-response>"
  "744c1032f68198df9c2b4b2ede38d155")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObstacleDistance-response)))
  "Returns md5sum for a message object of type 'SetObstacleDistance-response"
  "744c1032f68198df9c2b4b2ede38d155")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObstacleDistance-response>)))
  "Returns full string definition for message of type '<SetObstacleDistance-response>"
  (cl:format cl:nil "bool Success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObstacleDistance-response)))
  "Returns full string definition for message of type 'SetObstacleDistance-response"
  (cl:format cl:nil "bool Success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObstacleDistance-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObstacleDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObstacleDistance-response
    (cl:cons ':Success (Success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetObstacleDistance)))
  'SetObstacleDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetObstacleDistance)))
  'SetObstacleDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacleDistance)))
  "Returns string type for a service object of type '<SetObstacleDistance>"
  "BaseNode/SetObstacleDistance")