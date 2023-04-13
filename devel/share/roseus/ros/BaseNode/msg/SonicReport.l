;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::SonicReport)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'SonicReport (find-package "BASENODE")))
(unless (find-package "BASENODE::SONICREPORT")
  (make-package "BASENODE::SONICREPORT"))

(in-package "ROS")
;;//! \htmlinclude SonicReport.msg.html


(defclass BaseNode::SonicReport
  :super ros::object
  :slots (_sonic_too_close ))

(defmethod BaseNode::SonicReport
  (:init
   (&key
    ((:sonic_too_close __sonic_too_close) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _sonic_too_close __sonic_too_close)
   self)
  (:sonic_too_close
   (&optional __sonic_too_close)
   (if __sonic_too_close (setq _sonic_too_close __sonic_too_close)) _sonic_too_close)
  (:serialization-length
   ()
   (+
    ;; bool[] _sonic_too_close
    (* 1    (length _sonic_too_close)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _sonic_too_close
     (write-long (length _sonic_too_close) s)
     (dotimes (i (length _sonic_too_close))
       (if (elt _sonic_too_close i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _sonic_too_close
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sonic_too_close (make-list n))
     (dotimes (i n)
     (setf (elt _sonic_too_close i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get BaseNode::SonicReport :md5sum-) "2e85b346da5a184206999e10ccebec12")
(setf (get BaseNode::SonicReport :datatype-) "BaseNode/SonicReport")
(setf (get BaseNode::SonicReport :definition-)
      "bool[] sonic_too_close

")



(provide :BaseNode/SonicReport "2e85b346da5a184206999e10ccebec12")


