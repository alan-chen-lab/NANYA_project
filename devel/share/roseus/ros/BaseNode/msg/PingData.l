;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::PingData)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'PingData (find-package "BASENODE")))
(unless (find-package "BASENODE::PINGDATA")
  (make-package "BASENODE::PINGDATA"))

(in-package "ROS")
;;//! \htmlinclude PingData.msg.html


(defclass BaseNode::PingData
  :super ros::object
  :slots (_pingSN _firmwareVer _deviceID _day_ _hour_ _min_ ))

(defmethod BaseNode::PingData
  (:init
   (&key
    ((:pingSN __pingSN) "")
    ((:firmwareVer __firmwareVer) "")
    ((:deviceID __deviceID) "")
    ((:day_ __day_) 0)
    ((:hour_ __hour_) 0)
    ((:min_ __min_) 0)
    )
   (send-super :init)
   (setq _pingSN (string __pingSN))
   (setq _firmwareVer (string __firmwareVer))
   (setq _deviceID (string __deviceID))
   (setq _day_ (round __day_))
   (setq _hour_ (round __hour_))
   (setq _min_ (round __min_))
   self)
  (:pingSN
   (&optional __pingSN)
   (if __pingSN (setq _pingSN __pingSN)) _pingSN)
  (:firmwareVer
   (&optional __firmwareVer)
   (if __firmwareVer (setq _firmwareVer __firmwareVer)) _firmwareVer)
  (:deviceID
   (&optional __deviceID)
   (if __deviceID (setq _deviceID __deviceID)) _deviceID)
  (:day_
   (&optional __day_)
   (if __day_ (setq _day_ __day_)) _day_)
  (:hour_
   (&optional __hour_)
   (if __hour_ (setq _hour_ __hour_)) _hour_)
  (:min_
   (&optional __min_)
   (if __min_ (setq _min_ __min_)) _min_)
  (:serialization-length
   ()
   (+
    ;; string _pingSN
    4 (length _pingSN)
    ;; string _firmwareVer
    4 (length _firmwareVer)
    ;; string _deviceID
    4 (length _deviceID)
    ;; int32 _day_
    4
    ;; int32 _hour_
    4
    ;; int32 _min_
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pingSN
       (write-long (length _pingSN) s) (princ _pingSN s)
     ;; string _firmwareVer
       (write-long (length _firmwareVer) s) (princ _firmwareVer s)
     ;; string _deviceID
       (write-long (length _deviceID) s) (princ _deviceID s)
     ;; int32 _day_
       (write-long _day_ s)
     ;; int32 _hour_
       (write-long _hour_ s)
     ;; int32 _min_
       (write-long _min_ s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pingSN
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pingSN (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _firmwareVer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmwareVer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _deviceID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _deviceID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _day_
     (setq _day_ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hour_
     (setq _hour_ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _min_
     (setq _min_ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get BaseNode::PingData :md5sum-) "b9701021a69e4fdf80bdc15797b522e6")
(setf (get BaseNode::PingData :datatype-) "BaseNode/PingData")
(setf (get BaseNode::PingData :definition-)
      "string pingSN
string firmwareVer
string deviceID
int32 day_
int32 hour_
int32 min_

")



(provide :BaseNode/PingData "b9701021a69e4fdf80bdc15797b522e6")


