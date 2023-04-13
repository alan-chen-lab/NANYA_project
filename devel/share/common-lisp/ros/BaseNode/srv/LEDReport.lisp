; Auto-generated. Do not edit!


(cl:in-package BaseNode-srv)


;//! \htmlinclude LEDReport-request.msg.html

(cl:defclass <LEDReport-request> (roslisp-msg-protocol:ros-message)
  ((get_led
    :reader get_led
    :initarg :get_led
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LEDReport-request (<LEDReport-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDReport-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDReport-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-srv:<LEDReport-request> is deprecated: use BaseNode-srv:LEDReport-request instead.")))

(cl:ensure-generic-function 'get_led-val :lambda-list '(m))
(cl:defmethod get_led-val ((m <LEDReport-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:get_led-val is deprecated.  Use BaseNode-srv:get_led instead.")
  (get_led m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDReport-request>) ostream)
  "Serializes a message object of type '<LEDReport-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_led) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDReport-request>) istream)
  "Deserializes a message object of type '<LEDReport-request>"
    (cl:setf (cl:slot-value msg 'get_led) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDReport-request>)))
  "Returns string type for a service object of type '<LEDReport-request>"
  "BaseNode/LEDReportRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDReport-request)))
  "Returns string type for a service object of type 'LEDReport-request"
  "BaseNode/LEDReportRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDReport-request>)))
  "Returns md5sum for a message object of type '<LEDReport-request>"
  "5281860a67e91bcd8b35c89d74678b97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDReport-request)))
  "Returns md5sum for a message object of type 'LEDReport-request"
  "5281860a67e91bcd8b35c89d74678b97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDReport-request>)))
  "Returns full string definition for message of type '<LEDReport-request>"
  (cl:format cl:nil "bool get_led~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDReport-request)))
  "Returns full string definition for message of type 'LEDReport-request"
  (cl:format cl:nil "bool get_led~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDReport-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDReport-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDReport-request
    (cl:cons ':get_led (get_led msg))
))
;//! \htmlinclude LEDReport-response.msg.html

(cl:defclass <LEDReport-response> (roslisp-msg-protocol:ros-message)
  ((red_led
    :reader red_led
    :initarg :red_led
    :type cl:fixnum
    :initform 0)
   (green_led
    :reader green_led
    :initarg :green_led
    :type cl:fixnum
    :initform 0)
   (blue_led
    :reader blue_led
    :initarg :blue_led
    :type cl:fixnum
    :initform 0)
   (left_dig_led
    :reader left_dig_led
    :initarg :left_dig_led
    :type cl:boolean
    :initform cl:nil)
   (right_dig_led
    :reader right_dig_led
    :initarg :right_dig_led
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LEDReport-response (<LEDReport-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDReport-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDReport-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-srv:<LEDReport-response> is deprecated: use BaseNode-srv:LEDReport-response instead.")))

(cl:ensure-generic-function 'red_led-val :lambda-list '(m))
(cl:defmethod red_led-val ((m <LEDReport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:red_led-val is deprecated.  Use BaseNode-srv:red_led instead.")
  (red_led m))

(cl:ensure-generic-function 'green_led-val :lambda-list '(m))
(cl:defmethod green_led-val ((m <LEDReport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:green_led-val is deprecated.  Use BaseNode-srv:green_led instead.")
  (green_led m))

(cl:ensure-generic-function 'blue_led-val :lambda-list '(m))
(cl:defmethod blue_led-val ((m <LEDReport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:blue_led-val is deprecated.  Use BaseNode-srv:blue_led instead.")
  (blue_led m))

(cl:ensure-generic-function 'left_dig_led-val :lambda-list '(m))
(cl:defmethod left_dig_led-val ((m <LEDReport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:left_dig_led-val is deprecated.  Use BaseNode-srv:left_dig_led instead.")
  (left_dig_led m))

(cl:ensure-generic-function 'right_dig_led-val :lambda-list '(m))
(cl:defmethod right_dig_led-val ((m <LEDReport-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-srv:right_dig_led-val is deprecated.  Use BaseNode-srv:right_dig_led instead.")
  (right_dig_led m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDReport-response>) ostream)
  "Serializes a message object of type '<LEDReport-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_led)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'green_led)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_led)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_dig_led) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_dig_led) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDReport-response>) istream)
  "Deserializes a message object of type '<LEDReport-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_led)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'green_led)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_led)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_dig_led) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_dig_led) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDReport-response>)))
  "Returns string type for a service object of type '<LEDReport-response>"
  "BaseNode/LEDReportResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDReport-response)))
  "Returns string type for a service object of type 'LEDReport-response"
  "BaseNode/LEDReportResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDReport-response>)))
  "Returns md5sum for a message object of type '<LEDReport-response>"
  "5281860a67e91bcd8b35c89d74678b97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDReport-response)))
  "Returns md5sum for a message object of type 'LEDReport-response"
  "5281860a67e91bcd8b35c89d74678b97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDReport-response>)))
  "Returns full string definition for message of type '<LEDReport-response>"
  (cl:format cl:nil "uint8 red_led~%uint8 green_led~%uint8 blue_led~%bool left_dig_led~%bool right_dig_led~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDReport-response)))
  "Returns full string definition for message of type 'LEDReport-response"
  (cl:format cl:nil "uint8 red_led~%uint8 green_led~%uint8 blue_led~%bool left_dig_led~%bool right_dig_led~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDReport-response>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDReport-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDReport-response
    (cl:cons ':red_led (red_led msg))
    (cl:cons ':green_led (green_led msg))
    (cl:cons ':blue_led (blue_led msg))
    (cl:cons ':left_dig_led (left_dig_led msg))
    (cl:cons ':right_dig_led (right_dig_led msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LEDReport)))
  'LEDReport-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LEDReport)))
  'LEDReport-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDReport)))
  "Returns string type for a service object of type '<LEDReport>"
  "BaseNode/LEDReport")