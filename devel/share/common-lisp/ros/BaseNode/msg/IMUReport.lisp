; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude IMUReport.msg.html

(cl:defclass <IMUReport> (roslisp-msg-protocol:ros-message)
  ((linear_acc
    :reader linear_acc
    :initarg :linear_acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_acc
    :reader angular_acc
    :initarg :angular_acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass IMUReport (<IMUReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IMUReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IMUReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<IMUReport> is deprecated: use BaseNode-msg:IMUReport instead.")))

(cl:ensure-generic-function 'linear_acc-val :lambda-list '(m))
(cl:defmethod linear_acc-val ((m <IMUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:linear_acc-val is deprecated.  Use BaseNode-msg:linear_acc instead.")
  (linear_acc m))

(cl:ensure-generic-function 'angular_acc-val :lambda-list '(m))
(cl:defmethod angular_acc-val ((m <IMUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:angular_acc-val is deprecated.  Use BaseNode-msg:angular_acc instead.")
  (angular_acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IMUReport>) ostream)
  "Serializes a message object of type '<IMUReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_acc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IMUReport>) istream)
  "Deserializes a message object of type '<IMUReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_acc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IMUReport>)))
  "Returns string type for a message object of type '<IMUReport>"
  "BaseNode/IMUReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IMUReport)))
  "Returns string type for a message object of type 'IMUReport"
  "BaseNode/IMUReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IMUReport>)))
  "Returns md5sum for a message object of type '<IMUReport>"
  "1fa1cce6f2c843c4ab29f13782961f52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IMUReport)))
  "Returns md5sum for a message object of type 'IMUReport"
  "1fa1cce6f2c843c4ab29f13782961f52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IMUReport>)))
  "Returns full string definition for message of type '<IMUReport>"
  (cl:format cl:nil "geometry_msgs/Vector3 linear_acc~%geometry_msgs/Vector3 angular_acc~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IMUReport)))
  "Returns full string definition for message of type 'IMUReport"
  (cl:format cl:nil "geometry_msgs/Vector3 linear_acc~%geometry_msgs/Vector3 angular_acc~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IMUReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_acc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IMUReport>))
  "Converts a ROS message object to a list"
  (cl:list 'IMUReport
    (cl:cons ':linear_acc (linear_acc msg))
    (cl:cons ':angular_acc (angular_acc msg))
))
