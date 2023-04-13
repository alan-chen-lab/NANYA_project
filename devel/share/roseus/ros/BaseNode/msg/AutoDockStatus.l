;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::AutoDockStatus)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'AutoDockStatus (find-package "BASENODE")))
(unless (find-package "BASENODE::AUTODOCKSTATUS")
  (make-package "BASENODE::AUTODOCKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AutoDockStatus.msg.html


(defclass BaseNode::AutoDockStatus
  :super ros::object
  :slots (_charge_status _charge_stat_1 _charge_stat_2 _charge_dock_up _dock_error_message ))

(defmethod BaseNode::AutoDockStatus
  (:init
   (&key
    ((:charge_status __charge_status) 0)
    ((:charge_stat_1 __charge_stat_1) 0)
    ((:charge_stat_2 __charge_stat_2) 0)
    ((:charge_dock_up __charge_dock_up) 0)
    ((:dock_error_message __dock_error_message) 0)
    )
   (send-super :init)
   (setq _charge_status (round __charge_status))
   (setq _charge_stat_1 (round __charge_stat_1))
   (setq _charge_stat_2 (round __charge_stat_2))
   (setq _charge_dock_up (round __charge_dock_up))
   (setq _dock_error_message (round __dock_error_message))
   self)
  (:charge_status
   (&optional __charge_status)
   (if __charge_status (setq _charge_status __charge_status)) _charge_status)
  (:charge_stat_1
   (&optional __charge_stat_1)
   (if __charge_stat_1 (setq _charge_stat_1 __charge_stat_1)) _charge_stat_1)
  (:charge_stat_2
   (&optional __charge_stat_2)
   (if __charge_stat_2 (setq _charge_stat_2 __charge_stat_2)) _charge_stat_2)
  (:charge_dock_up
   (&optional __charge_dock_up)
   (if __charge_dock_up (setq _charge_dock_up __charge_dock_up)) _charge_dock_up)
  (:dock_error_message
   (&optional __dock_error_message)
   (if __dock_error_message (setq _dock_error_message __dock_error_message)) _dock_error_message)
  (:serialization-length
   ()
   (+
    ;; int32 _charge_status
    4
    ;; int32 _charge_stat_1
    4
    ;; int32 _charge_stat_2
    4
    ;; int32 _charge_dock_up
    4
    ;; int32 _dock_error_message
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _charge_status
       (write-long _charge_status s)
     ;; int32 _charge_stat_1
       (write-long _charge_stat_1 s)
     ;; int32 _charge_stat_2
       (write-long _charge_stat_2 s)
     ;; int32 _charge_dock_up
       (write-long _charge_dock_up s)
     ;; int32 _dock_error_message
       (write-long _dock_error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _charge_status
     (setq _charge_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _charge_stat_1
     (setq _charge_stat_1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _charge_stat_2
     (setq _charge_stat_2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _charge_dock_up
     (setq _charge_dock_up (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dock_error_message
     (setq _dock_error_message (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get BaseNode::AutoDockStatus :md5sum-) "9901a3dd8e5c795bffd793bfc0e7fda6")
(setf (get BaseNode::AutoDockStatus :datatype-) "BaseNode/AutoDockStatus")
(setf (get BaseNode::AutoDockStatus :definition-)
      "int32 charge_status
int32 charge_stat_1
int32 charge_stat_2
int32 charge_dock_up
int32 dock_error_message

")



(provide :BaseNode/AutoDockStatus "9901a3dd8e5c795bffd793bfc0e7fda6")


