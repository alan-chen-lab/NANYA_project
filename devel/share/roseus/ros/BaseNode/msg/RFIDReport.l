;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::RFIDReport)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'RFIDReport (find-package "BASENODE")))
(unless (find-package "BASENODE::RFIDREPORT")
  (make-package "BASENODE::RFIDREPORT"))

(in-package "ROS")
;;//! \htmlinclude RFIDReport.msg.html


(defclass BaseNode::RFIDReport
  :super ros::object
  :slots (_RFIDNo _detect_status ))

(defmethod BaseNode::RFIDReport
  (:init
   (&key
    ((:RFIDNo __RFIDNo) "")
    ((:detect_status __detect_status) nil)
    )
   (send-super :init)
   (setq _RFIDNo (string __RFIDNo))
   (setq _detect_status __detect_status)
   self)
  (:RFIDNo
   (&optional __RFIDNo)
   (if __RFIDNo (setq _RFIDNo __RFIDNo)) _RFIDNo)
  (:detect_status
   (&optional __detect_status)
   (if __detect_status (setq _detect_status __detect_status)) _detect_status)
  (:serialization-length
   ()
   (+
    ;; string _RFIDNo
    4 (length _RFIDNo)
    ;; bool _detect_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _RFIDNo
       (write-long (length _RFIDNo) s) (princ _RFIDNo s)
     ;; bool _detect_status
       (if _detect_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _RFIDNo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _RFIDNo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _detect_status
     (setq _detect_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get BaseNode::RFIDReport :md5sum-) "8f5274ec60f335c39997a38a6d19ff0d")
(setf (get BaseNode::RFIDReport :datatype-) "BaseNode/RFIDReport")
(setf (get BaseNode::RFIDReport :definition-)
      "string RFIDNo
bool detect_status
")



(provide :BaseNode/RFIDReport "8f5274ec60f335c39997a38a6d19ff0d")


