;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::IrDockReport)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'IrDockReport (find-package "BASENODE")))
(unless (find-package "BASENODE::IRDOCKREPORT")
  (make-package "BASENODE::IRDOCKREPORT"))

(in-package "ROS")
;;//! \htmlinclude IrDockReport.msg.html


(defclass BaseNode::IrDockReport
  :super ros::object
  :slots (_ir_left _ir_right _ir_left_stat _ir_right_stat ))

(defmethod BaseNode::IrDockReport
  (:init
   (&key
    ((:ir_left __ir_left) "")
    ((:ir_right __ir_right) "")
    ((:ir_left_stat __ir_left_stat) 0)
    ((:ir_right_stat __ir_right_stat) 0)
    )
   (send-super :init)
   (setq _ir_left (string __ir_left))
   (setq _ir_right (string __ir_right))
   (setq _ir_left_stat (round __ir_left_stat))
   (setq _ir_right_stat (round __ir_right_stat))
   self)
  (:ir_left
   (&optional __ir_left)
   (if __ir_left (setq _ir_left __ir_left)) _ir_left)
  (:ir_right
   (&optional __ir_right)
   (if __ir_right (setq _ir_right __ir_right)) _ir_right)
  (:ir_left_stat
   (&optional __ir_left_stat)
   (if __ir_left_stat (setq _ir_left_stat __ir_left_stat)) _ir_left_stat)
  (:ir_right_stat
   (&optional __ir_right_stat)
   (if __ir_right_stat (setq _ir_right_stat __ir_right_stat)) _ir_right_stat)
  (:serialization-length
   ()
   (+
    ;; string _ir_left
    4 (length _ir_left)
    ;; string _ir_right
    4 (length _ir_right)
    ;; int32 _ir_left_stat
    4
    ;; int32 _ir_right_stat
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ir_left
       (write-long (length _ir_left) s) (princ _ir_left s)
     ;; string _ir_right
       (write-long (length _ir_right) s) (princ _ir_right s)
     ;; int32 _ir_left_stat
       (write-long _ir_left_stat s)
     ;; int32 _ir_right_stat
       (write-long _ir_right_stat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ir_left
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ir_left (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ir_right
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ir_right (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _ir_left_stat
     (setq _ir_left_stat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ir_right_stat
     (setq _ir_right_stat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get BaseNode::IrDockReport :md5sum-) "466bf0cbbf6c657c56a3177353abfb08")
(setf (get BaseNode::IrDockReport :datatype-) "BaseNode/IrDockReport")
(setf (get BaseNode::IrDockReport :definition-)
      "string ir_left
string ir_right
int32 ir_left_stat
int32 ir_right_stat

")



(provide :BaseNode/IrDockReport "466bf0cbbf6c657c56a3177353abfb08")


