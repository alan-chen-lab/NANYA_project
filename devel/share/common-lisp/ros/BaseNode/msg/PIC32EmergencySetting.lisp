; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude PIC32EmergencySetting.msg.html

(cl:defclass <PIC32EmergencySetting> (roslisp-msg-protocol:ros-message)
  ((ultrasonic_brake_enabled
    :reader ultrasonic_brake_enabled
    :initarg :ultrasonic_brake_enabled
    :type cl:boolean
    :initform cl:nil)
   (emergency_button_enabled
    :reader emergency_button_enabled
    :initarg :emergency_button_enabled
    :type cl:boolean
    :initform cl:nil)
   (bumper_brake_enabled
    :reader bumper_brake_enabled
    :initarg :bumper_brake_enabled
    :type cl:boolean
    :initform cl:nil)
   (auto_dock_enabled
    :reader auto_dock_enabled
    :initarg :auto_dock_enabled
    :type cl:boolean
    :initform cl:nil)
   (wheel_release_enabled
    :reader wheel_release_enabled
    :initarg :wheel_release_enabled
    :type cl:boolean
    :initform cl:nil)
   (wheel_brake_enabled
    :reader wheel_brake_enabled
    :initarg :wheel_brake_enabled
    :type cl:boolean
    :initform cl:nil)
   (ir_enabled
    :reader ir_enabled
    :initarg :ir_enabled
    :type cl:boolean
    :initform cl:nil)
   (sonic_distance
    :reader sonic_distance
    :initarg :sonic_distance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PIC32EmergencySetting (<PIC32EmergencySetting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PIC32EmergencySetting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PIC32EmergencySetting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<PIC32EmergencySetting> is deprecated: use BaseNode-msg:PIC32EmergencySetting instead.")))

(cl:ensure-generic-function 'ultrasonic_brake_enabled-val :lambda-list '(m))
(cl:defmethod ultrasonic_brake_enabled-val ((m <PIC32EmergencySetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:ultrasonic_brake_enabled-val is deprecated.  Use BaseNode-msg:ultrasonic_brake_enabled instead.")
  (ultrasonic_brake_enabled m))

(cl:ensure-generic-function 'emergency_button_enabled-val :lambda-list '(m))
(cl:defmethod emergency_button_enabled-val ((m <PIC32EmergencySetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:emergency_button_enabled-val is deprecated.  Use BaseNode-msg:emergency_button_enabled instead.")
  (emergency_button_enabled m))

(cl:ensure-generic-function 'bumper_brake_enabled-val :lambda-list '(m))
(cl:defmethod bumper_brake_enabled-val ((m <PIC32EmergencySetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:bumper_brake_enabled-val is deprecated.  Use BaseNode-msg:bumper_brake_enabled instead.")
  (bumper_brake_enabled m))

(cl:ensure-generic-function 'auto_dock_enabled-val :lambda-list '(m))
(cl:defmethod auto_dock_enabled-val ((m <PIC32EmergencySetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:auto_dock_enabled-val is deprecated.  Use BaseNode-msg:auto_dock_enabled instead.")
  (auto_dock_enabled m))

(cl:ensure-generic-function 'wheel_release_enabled-val :lambda-list '(m))
(cl:defmethod wheel_release_enabled-val ((m <PIC32EmergencySetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:wheel_release_enabled-val is deprecated.  Use BaseNode-msg:wheel_release_enabled instead.")
  (wheel_release_enabled m))

(cl:ensure-generic-function 'wheel_brake_enabled-val :lambda-list '(m))
(cl:defmethod wheel_brake_enabled-val ((m <PIC32EmergencySetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:wheel_brake_enabled-val is deprecated.  Use BaseNode-msg:wheel_brake_enabled instead.")
  (wheel_brake_enabled m))

(cl:ensure-generic-function 'ir_enabled-val :lambda-list '(m))
(cl:defmethod ir_enabled-val ((m <PIC32EmergencySetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:ir_enabled-val is deprecated.  Use BaseNode-msg:ir_enabled instead.")
  (ir_enabled m))

(cl:ensure-generic-function 'sonic_distance-val :lambda-list '(m))
(cl:defmethod sonic_distance-val ((m <PIC32EmergencySetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:sonic_distance-val is deprecated.  Use BaseNode-msg:sonic_distance instead.")
  (sonic_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PIC32EmergencySetting>) ostream)
  "Serializes a message object of type '<PIC32EmergencySetting>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ultrasonic_brake_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_button_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumper_brake_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_dock_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_release_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_brake_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_enabled) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sonic_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'sonic_distance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PIC32EmergencySetting>) istream)
  "Deserializes a message object of type '<PIC32EmergencySetting>"
    (cl:setf (cl:slot-value msg 'ultrasonic_brake_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emergency_button_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bumper_brake_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto_dock_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_release_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_brake_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sonic_distance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sonic_distance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PIC32EmergencySetting>)))
  "Returns string type for a message object of type '<PIC32EmergencySetting>"
  "BaseNode/PIC32EmergencySetting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIC32EmergencySetting)))
  "Returns string type for a message object of type 'PIC32EmergencySetting"
  "BaseNode/PIC32EmergencySetting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PIC32EmergencySetting>)))
  "Returns md5sum for a message object of type '<PIC32EmergencySetting>"
  "3769897b20780c564a9f24a1698a3c0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PIC32EmergencySetting)))
  "Returns md5sum for a message object of type 'PIC32EmergencySetting"
  "3769897b20780c564a9f24a1698a3c0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PIC32EmergencySetting>)))
  "Returns full string definition for message of type '<PIC32EmergencySetting>"
  (cl:format cl:nil "bool ultrasonic_brake_enabled~%bool emergency_button_enabled~%bool bumper_brake_enabled~%bool auto_dock_enabled~%~%bool wheel_release_enabled~%bool wheel_brake_enabled~%~%bool ir_enabled~%~%~%float64[] sonic_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PIC32EmergencySetting)))
  "Returns full string definition for message of type 'PIC32EmergencySetting"
  (cl:format cl:nil "bool ultrasonic_brake_enabled~%bool emergency_button_enabled~%bool bumper_brake_enabled~%bool auto_dock_enabled~%~%bool wheel_release_enabled~%bool wheel_brake_enabled~%~%bool ir_enabled~%~%~%float64[] sonic_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PIC32EmergencySetting>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sonic_distance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PIC32EmergencySetting>))
  "Converts a ROS message object to a list"
  (cl:list 'PIC32EmergencySetting
    (cl:cons ':ultrasonic_brake_enabled (ultrasonic_brake_enabled msg))
    (cl:cons ':emergency_button_enabled (emergency_button_enabled msg))
    (cl:cons ':bumper_brake_enabled (bumper_brake_enabled msg))
    (cl:cons ':auto_dock_enabled (auto_dock_enabled msg))
    (cl:cons ':wheel_release_enabled (wheel_release_enabled msg))
    (cl:cons ':wheel_brake_enabled (wheel_brake_enabled msg))
    (cl:cons ':ir_enabled (ir_enabled msg))
    (cl:cons ':sonic_distance (sonic_distance msg))
))
