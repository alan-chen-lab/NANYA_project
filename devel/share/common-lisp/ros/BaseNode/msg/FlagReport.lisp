; Auto-generated. Do not edit!


(cl:in-package BaseNode-msg)


;//! \htmlinclude FlagReport.msg.html

(cl:defclass <FlagReport> (roslisp-msg-protocol:ros-message)
  ((stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil)
   (walking_front
    :reader walking_front
    :initarg :walking_front
    :type cl:boolean
    :initform cl:nil)
   (walking_back
    :reader walking_back
    :initarg :walking_back
    :type cl:boolean
    :initform cl:nil)
   (rotating_left
    :reader rotating_left
    :initarg :rotating_left
    :type cl:boolean
    :initform cl:nil)
   (rotating_right
    :reader rotating_right
    :initarg :rotating_right
    :type cl:boolean
    :initform cl:nil)
   (wheel_control_mode_1
    :reader wheel_control_mode_1
    :initarg :wheel_control_mode_1
    :type cl:boolean
    :initform cl:nil)
   (wheel_control_mode_2
    :reader wheel_control_mode_2
    :initarg :wheel_control_mode_2
    :type cl:boolean
    :initform cl:nil)
   (wheel_control_mode_3
    :reader wheel_control_mode_3
    :initarg :wheel_control_mode_3
    :type cl:boolean
    :initform cl:nil)
   (wheel_brake_mode
    :reader wheel_brake_mode
    :initarg :wheel_brake_mode
    :type cl:boolean
    :initform cl:nil)
   (wheel_release_mode
    :reader wheel_release_mode
    :initarg :wheel_release_mode
    :type cl:boolean
    :initform cl:nil)
   (go_to_dock
    :reader go_to_dock
    :initarg :go_to_dock
    :type cl:boolean
    :initform cl:nil)
   (dock_escape
    :reader dock_escape
    :initarg :dock_escape
    :type cl:boolean
    :initform cl:nil)
   (do_not_charge
    :reader do_not_charge
    :initarg :do_not_charge
    :type cl:boolean
    :initform cl:nil)
   (charging
    :reader charging
    :initarg :charging
    :type cl:boolean
    :initform cl:nil)
   (charge_finish
    :reader charge_finish
    :initarg :charge_finish
    :type cl:boolean
    :initform cl:nil)
   (fault_in_charge
    :reader fault_in_charge
    :initarg :fault_in_charge
    :type cl:boolean
    :initform cl:nil)
   (stop_btn_hit
    :reader stop_btn_hit
    :initarg :stop_btn_hit
    :type cl:boolean
    :initform cl:nil)
   (sleep_btn_hit
    :reader sleep_btn_hit
    :initarg :sleep_btn_hit
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FlagReport (<FlagReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlagReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlagReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BaseNode-msg:<FlagReport> is deprecated: use BaseNode-msg:FlagReport instead.")))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:stop-val is deprecated.  Use BaseNode-msg:stop instead.")
  (stop m))

(cl:ensure-generic-function 'walking_front-val :lambda-list '(m))
(cl:defmethod walking_front-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:walking_front-val is deprecated.  Use BaseNode-msg:walking_front instead.")
  (walking_front m))

(cl:ensure-generic-function 'walking_back-val :lambda-list '(m))
(cl:defmethod walking_back-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:walking_back-val is deprecated.  Use BaseNode-msg:walking_back instead.")
  (walking_back m))

(cl:ensure-generic-function 'rotating_left-val :lambda-list '(m))
(cl:defmethod rotating_left-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:rotating_left-val is deprecated.  Use BaseNode-msg:rotating_left instead.")
  (rotating_left m))

(cl:ensure-generic-function 'rotating_right-val :lambda-list '(m))
(cl:defmethod rotating_right-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:rotating_right-val is deprecated.  Use BaseNode-msg:rotating_right instead.")
  (rotating_right m))

(cl:ensure-generic-function 'wheel_control_mode_1-val :lambda-list '(m))
(cl:defmethod wheel_control_mode_1-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:wheel_control_mode_1-val is deprecated.  Use BaseNode-msg:wheel_control_mode_1 instead.")
  (wheel_control_mode_1 m))

(cl:ensure-generic-function 'wheel_control_mode_2-val :lambda-list '(m))
(cl:defmethod wheel_control_mode_2-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:wheel_control_mode_2-val is deprecated.  Use BaseNode-msg:wheel_control_mode_2 instead.")
  (wheel_control_mode_2 m))

(cl:ensure-generic-function 'wheel_control_mode_3-val :lambda-list '(m))
(cl:defmethod wheel_control_mode_3-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:wheel_control_mode_3-val is deprecated.  Use BaseNode-msg:wheel_control_mode_3 instead.")
  (wheel_control_mode_3 m))

(cl:ensure-generic-function 'wheel_brake_mode-val :lambda-list '(m))
(cl:defmethod wheel_brake_mode-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:wheel_brake_mode-val is deprecated.  Use BaseNode-msg:wheel_brake_mode instead.")
  (wheel_brake_mode m))

(cl:ensure-generic-function 'wheel_release_mode-val :lambda-list '(m))
(cl:defmethod wheel_release_mode-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:wheel_release_mode-val is deprecated.  Use BaseNode-msg:wheel_release_mode instead.")
  (wheel_release_mode m))

(cl:ensure-generic-function 'go_to_dock-val :lambda-list '(m))
(cl:defmethod go_to_dock-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:go_to_dock-val is deprecated.  Use BaseNode-msg:go_to_dock instead.")
  (go_to_dock m))

(cl:ensure-generic-function 'dock_escape-val :lambda-list '(m))
(cl:defmethod dock_escape-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:dock_escape-val is deprecated.  Use BaseNode-msg:dock_escape instead.")
  (dock_escape m))

(cl:ensure-generic-function 'do_not_charge-val :lambda-list '(m))
(cl:defmethod do_not_charge-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:do_not_charge-val is deprecated.  Use BaseNode-msg:do_not_charge instead.")
  (do_not_charge m))

(cl:ensure-generic-function 'charging-val :lambda-list '(m))
(cl:defmethod charging-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:charging-val is deprecated.  Use BaseNode-msg:charging instead.")
  (charging m))

(cl:ensure-generic-function 'charge_finish-val :lambda-list '(m))
(cl:defmethod charge_finish-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:charge_finish-val is deprecated.  Use BaseNode-msg:charge_finish instead.")
  (charge_finish m))

(cl:ensure-generic-function 'fault_in_charge-val :lambda-list '(m))
(cl:defmethod fault_in_charge-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:fault_in_charge-val is deprecated.  Use BaseNode-msg:fault_in_charge instead.")
  (fault_in_charge m))

(cl:ensure-generic-function 'stop_btn_hit-val :lambda-list '(m))
(cl:defmethod stop_btn_hit-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:stop_btn_hit-val is deprecated.  Use BaseNode-msg:stop_btn_hit instead.")
  (stop_btn_hit m))

(cl:ensure-generic-function 'sleep_btn_hit-val :lambda-list '(m))
(cl:defmethod sleep_btn_hit-val ((m <FlagReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BaseNode-msg:sleep_btn_hit-val is deprecated.  Use BaseNode-msg:sleep_btn_hit instead.")
  (sleep_btn_hit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlagReport>) ostream)
  "Serializes a message object of type '<FlagReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'walking_front) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'walking_back) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotating_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotating_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_control_mode_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_control_mode_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_control_mode_3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_brake_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_release_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'go_to_dock) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock_escape) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'do_not_charge) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charging) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charge_finish) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fault_in_charge) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_btn_hit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sleep_btn_hit) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlagReport>) istream)
  "Deserializes a message object of type '<FlagReport>"
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'walking_front) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'walking_back) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rotating_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rotating_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_control_mode_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_control_mode_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_control_mode_3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_brake_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_release_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'go_to_dock) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dock_escape) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'do_not_charge) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charge_finish) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fault_in_charge) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stop_btn_hit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sleep_btn_hit) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlagReport>)))
  "Returns string type for a message object of type '<FlagReport>"
  "BaseNode/FlagReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlagReport)))
  "Returns string type for a message object of type 'FlagReport"
  "BaseNode/FlagReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlagReport>)))
  "Returns md5sum for a message object of type '<FlagReport>"
  "d345398ab2289d85ecccc71f9593ce9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlagReport)))
  "Returns md5sum for a message object of type 'FlagReport"
  "d345398ab2289d85ecccc71f9593ce9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlagReport>)))
  "Returns full string definition for message of type '<FlagReport>"
  (cl:format cl:nil "# Move Direction~%bool stop~%bool walking_front~%bool walking_back~%bool rotating_left~%bool rotating_right~%~%# Robot Mode Flag~%bool wheel_control_mode_1~%bool wheel_control_mode_2~%bool wheel_control_mode_3~%bool wheel_brake_mode~%bool wheel_release_mode~%bool go_to_dock~%bool dock_escape~%~%# charge~%bool do_not_charge~%bool charging~%bool charge_finish~%bool fault_in_charge~%~%# Button~%bool stop_btn_hit~%bool sleep_btn_hit~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlagReport)))
  "Returns full string definition for message of type 'FlagReport"
  (cl:format cl:nil "# Move Direction~%bool stop~%bool walking_front~%bool walking_back~%bool rotating_left~%bool rotating_right~%~%# Robot Mode Flag~%bool wheel_control_mode_1~%bool wheel_control_mode_2~%bool wheel_control_mode_3~%bool wheel_brake_mode~%bool wheel_release_mode~%bool go_to_dock~%bool dock_escape~%~%# charge~%bool do_not_charge~%bool charging~%bool charge_finish~%bool fault_in_charge~%~%# Button~%bool stop_btn_hit~%bool sleep_btn_hit~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlagReport>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlagReport>))
  "Converts a ROS message object to a list"
  (cl:list 'FlagReport
    (cl:cons ':stop (stop msg))
    (cl:cons ':walking_front (walking_front msg))
    (cl:cons ':walking_back (walking_back msg))
    (cl:cons ':rotating_left (rotating_left msg))
    (cl:cons ':rotating_right (rotating_right msg))
    (cl:cons ':wheel_control_mode_1 (wheel_control_mode_1 msg))
    (cl:cons ':wheel_control_mode_2 (wheel_control_mode_2 msg))
    (cl:cons ':wheel_control_mode_3 (wheel_control_mode_3 msg))
    (cl:cons ':wheel_brake_mode (wheel_brake_mode msg))
    (cl:cons ':wheel_release_mode (wheel_release_mode msg))
    (cl:cons ':go_to_dock (go_to_dock msg))
    (cl:cons ':dock_escape (dock_escape msg))
    (cl:cons ':do_not_charge (do_not_charge msg))
    (cl:cons ':charging (charging msg))
    (cl:cons ':charge_finish (charge_finish msg))
    (cl:cons ':fault_in_charge (fault_in_charge msg))
    (cl:cons ':stop_btn_hit (stop_btn_hit msg))
    (cl:cons ':sleep_btn_hit (sleep_btn_hit msg))
))
