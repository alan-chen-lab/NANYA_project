;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::FlagReport)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'FlagReport (find-package "BASENODE")))
(unless (find-package "BASENODE::FLAGREPORT")
  (make-package "BASENODE::FLAGREPORT"))

(in-package "ROS")
;;//! \htmlinclude FlagReport.msg.html


(defclass BaseNode::FlagReport
  :super ros::object
  :slots (_stop _walking_front _walking_back _rotating_left _rotating_right _wheel_control_mode_1 _wheel_control_mode_2 _wheel_control_mode_3 _wheel_brake_mode _wheel_release_mode _go_to_dock _dock_escape _do_not_charge _charging _charge_finish _fault_in_charge _stop_btn_hit _sleep_btn_hit ))

(defmethod BaseNode::FlagReport
  (:init
   (&key
    ((:stop __stop) nil)
    ((:walking_front __walking_front) nil)
    ((:walking_back __walking_back) nil)
    ((:rotating_left __rotating_left) nil)
    ((:rotating_right __rotating_right) nil)
    ((:wheel_control_mode_1 __wheel_control_mode_1) nil)
    ((:wheel_control_mode_2 __wheel_control_mode_2) nil)
    ((:wheel_control_mode_3 __wheel_control_mode_3) nil)
    ((:wheel_brake_mode __wheel_brake_mode) nil)
    ((:wheel_release_mode __wheel_release_mode) nil)
    ((:go_to_dock __go_to_dock) nil)
    ((:dock_escape __dock_escape) nil)
    ((:do_not_charge __do_not_charge) nil)
    ((:charging __charging) nil)
    ((:charge_finish __charge_finish) nil)
    ((:fault_in_charge __fault_in_charge) nil)
    ((:stop_btn_hit __stop_btn_hit) nil)
    ((:sleep_btn_hit __sleep_btn_hit) nil)
    )
   (send-super :init)
   (setq _stop __stop)
   (setq _walking_front __walking_front)
   (setq _walking_back __walking_back)
   (setq _rotating_left __rotating_left)
   (setq _rotating_right __rotating_right)
   (setq _wheel_control_mode_1 __wheel_control_mode_1)
   (setq _wheel_control_mode_2 __wheel_control_mode_2)
   (setq _wheel_control_mode_3 __wheel_control_mode_3)
   (setq _wheel_brake_mode __wheel_brake_mode)
   (setq _wheel_release_mode __wheel_release_mode)
   (setq _go_to_dock __go_to_dock)
   (setq _dock_escape __dock_escape)
   (setq _do_not_charge __do_not_charge)
   (setq _charging __charging)
   (setq _charge_finish __charge_finish)
   (setq _fault_in_charge __fault_in_charge)
   (setq _stop_btn_hit __stop_btn_hit)
   (setq _sleep_btn_hit __sleep_btn_hit)
   self)
  (:stop
   (&optional __stop)
   (if __stop (setq _stop __stop)) _stop)
  (:walking_front
   (&optional __walking_front)
   (if __walking_front (setq _walking_front __walking_front)) _walking_front)
  (:walking_back
   (&optional __walking_back)
   (if __walking_back (setq _walking_back __walking_back)) _walking_back)
  (:rotating_left
   (&optional __rotating_left)
   (if __rotating_left (setq _rotating_left __rotating_left)) _rotating_left)
  (:rotating_right
   (&optional __rotating_right)
   (if __rotating_right (setq _rotating_right __rotating_right)) _rotating_right)
  (:wheel_control_mode_1
   (&optional __wheel_control_mode_1)
   (if __wheel_control_mode_1 (setq _wheel_control_mode_1 __wheel_control_mode_1)) _wheel_control_mode_1)
  (:wheel_control_mode_2
   (&optional __wheel_control_mode_2)
   (if __wheel_control_mode_2 (setq _wheel_control_mode_2 __wheel_control_mode_2)) _wheel_control_mode_2)
  (:wheel_control_mode_3
   (&optional __wheel_control_mode_3)
   (if __wheel_control_mode_3 (setq _wheel_control_mode_3 __wheel_control_mode_3)) _wheel_control_mode_3)
  (:wheel_brake_mode
   (&optional __wheel_brake_mode)
   (if __wheel_brake_mode (setq _wheel_brake_mode __wheel_brake_mode)) _wheel_brake_mode)
  (:wheel_release_mode
   (&optional __wheel_release_mode)
   (if __wheel_release_mode (setq _wheel_release_mode __wheel_release_mode)) _wheel_release_mode)
  (:go_to_dock
   (&optional __go_to_dock)
   (if __go_to_dock (setq _go_to_dock __go_to_dock)) _go_to_dock)
  (:dock_escape
   (&optional __dock_escape)
   (if __dock_escape (setq _dock_escape __dock_escape)) _dock_escape)
  (:do_not_charge
   (&optional __do_not_charge)
   (if __do_not_charge (setq _do_not_charge __do_not_charge)) _do_not_charge)
  (:charging
   (&optional __charging)
   (if __charging (setq _charging __charging)) _charging)
  (:charge_finish
   (&optional __charge_finish)
   (if __charge_finish (setq _charge_finish __charge_finish)) _charge_finish)
  (:fault_in_charge
   (&optional __fault_in_charge)
   (if __fault_in_charge (setq _fault_in_charge __fault_in_charge)) _fault_in_charge)
  (:stop_btn_hit
   (&optional __stop_btn_hit)
   (if __stop_btn_hit (setq _stop_btn_hit __stop_btn_hit)) _stop_btn_hit)
  (:sleep_btn_hit
   (&optional __sleep_btn_hit)
   (if __sleep_btn_hit (setq _sleep_btn_hit __sleep_btn_hit)) _sleep_btn_hit)
  (:serialization-length
   ()
   (+
    ;; bool _stop
    1
    ;; bool _walking_front
    1
    ;; bool _walking_back
    1
    ;; bool _rotating_left
    1
    ;; bool _rotating_right
    1
    ;; bool _wheel_control_mode_1
    1
    ;; bool _wheel_control_mode_2
    1
    ;; bool _wheel_control_mode_3
    1
    ;; bool _wheel_brake_mode
    1
    ;; bool _wheel_release_mode
    1
    ;; bool _go_to_dock
    1
    ;; bool _dock_escape
    1
    ;; bool _do_not_charge
    1
    ;; bool _charging
    1
    ;; bool _charge_finish
    1
    ;; bool _fault_in_charge
    1
    ;; bool _stop_btn_hit
    1
    ;; bool _sleep_btn_hit
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _walking_front
       (if _walking_front (write-byte -1 s) (write-byte 0 s))
     ;; bool _walking_back
       (if _walking_back (write-byte -1 s) (write-byte 0 s))
     ;; bool _rotating_left
       (if _rotating_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _rotating_right
       (if _rotating_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_control_mode_1
       (if _wheel_control_mode_1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_control_mode_2
       (if _wheel_control_mode_2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_control_mode_3
       (if _wheel_control_mode_3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_brake_mode
       (if _wheel_brake_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_release_mode
       (if _wheel_release_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _go_to_dock
       (if _go_to_dock (write-byte -1 s) (write-byte 0 s))
     ;; bool _dock_escape
       (if _dock_escape (write-byte -1 s) (write-byte 0 s))
     ;; bool _do_not_charge
       (if _do_not_charge (write-byte -1 s) (write-byte 0 s))
     ;; bool _charging
       (if _charging (write-byte -1 s) (write-byte 0 s))
     ;; bool _charge_finish
       (if _charge_finish (write-byte -1 s) (write-byte 0 s))
     ;; bool _fault_in_charge
       (if _fault_in_charge (write-byte -1 s) (write-byte 0 s))
     ;; bool _stop_btn_hit
       (if _stop_btn_hit (write-byte -1 s) (write-byte 0 s))
     ;; bool _sleep_btn_hit
       (if _sleep_btn_hit (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _walking_front
     (setq _walking_front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _walking_back
     (setq _walking_back (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rotating_left
     (setq _rotating_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rotating_right
     (setq _rotating_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_control_mode_1
     (setq _wheel_control_mode_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_control_mode_2
     (setq _wheel_control_mode_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_control_mode_3
     (setq _wheel_control_mode_3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_brake_mode
     (setq _wheel_brake_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_release_mode
     (setq _wheel_release_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _go_to_dock
     (setq _go_to_dock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dock_escape
     (setq _dock_escape (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _do_not_charge
     (setq _do_not_charge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charging
     (setq _charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charge_finish
     (setq _charge_finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fault_in_charge
     (setq _fault_in_charge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stop_btn_hit
     (setq _stop_btn_hit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sleep_btn_hit
     (setq _sleep_btn_hit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get BaseNode::FlagReport :md5sum-) "d345398ab2289d85ecccc71f9593ce9e")
(setf (get BaseNode::FlagReport :datatype-) "BaseNode/FlagReport")
(setf (get BaseNode::FlagReport :definition-)
      "# Move Direction
bool stop
bool walking_front
bool walking_back
bool rotating_left
bool rotating_right

# Robot Mode Flag
bool wheel_control_mode_1
bool wheel_control_mode_2
bool wheel_control_mode_3
bool wheel_brake_mode
bool wheel_release_mode
bool go_to_dock
bool dock_escape

# charge
bool do_not_charge
bool charging
bool charge_finish
bool fault_in_charge

# Button
bool stop_btn_hit
bool sleep_btn_hit





")



(provide :BaseNode/FlagReport "d345398ab2289d85ecccc71f9593ce9e")


