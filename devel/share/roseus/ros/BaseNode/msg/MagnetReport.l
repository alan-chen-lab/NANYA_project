;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::MagnetReport)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'MagnetReport (find-package "BASENODE")))
(unless (find-package "BASENODE::MAGNETREPORT")
  (make-package "BASENODE::MAGNETREPORT"))

(in-package "ROS")
;;//! \htmlinclude MagnetReport.msg.html


(defclass BaseNode::MagnetReport
  :super ros::object
  :slots (_cell ))

(defmethod BaseNode::MagnetReport
  (:init
   (&key
    ((:cell __cell) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _cell __cell)
   self)
  (:cell
   (&optional __cell)
   (if __cell (setq _cell __cell)) _cell)
  (:serialization-length
   ()
   (+
    ;; bool[] _cell
    (* 1    (length _cell)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _cell
     (write-long (length _cell) s)
     (dotimes (i (length _cell))
       (if (elt _cell i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _cell
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell (make-list n))
     (dotimes (i n)
     (setf (elt _cell i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get BaseNode::MagnetReport :md5sum-) "e9f73b0509699f216ff940c7a6e46e63")
(setf (get BaseNode::MagnetReport :datatype-) "BaseNode/MagnetReport")
(setf (get BaseNode::MagnetReport :definition-)
      "bool[] cell

")



(provide :BaseNode/MagnetReport "e9f73b0509699f216ff940c7a6e46e63")


