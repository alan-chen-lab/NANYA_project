;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::SetObstacleDistance)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'SetObstacleDistance (find-package "BASENODE")))
(unless (find-package "BASENODE::SETOBSTACLEDISTANCE")
  (make-package "BASENODE::SETOBSTACLEDISTANCE"))
(unless (find-package "BASENODE::SETOBSTACLEDISTANCEREQUEST")
  (make-package "BASENODE::SETOBSTACLEDISTANCEREQUEST"))
(unless (find-package "BASENODE::SETOBSTACLEDISTANCERESPONSE")
  (make-package "BASENODE::SETOBSTACLEDISTANCERESPONSE"))

(in-package "ROS")





(defclass BaseNode::SetObstacleDistanceRequest
  :super ros::object
  :slots (_USDis0 _USDis1 _USDis2 _USDis3 _USDis4 _USDis5 _USDis6 ))

(defmethod BaseNode::SetObstacleDistanceRequest
  (:init
   (&key
    ((:USDis0 __USDis0) 0)
    ((:USDis1 __USDis1) 0)
    ((:USDis2 __USDis2) 0)
    ((:USDis3 __USDis3) 0)
    ((:USDis4 __USDis4) 0)
    ((:USDis5 __USDis5) 0)
    ((:USDis6 __USDis6) 0)
    )
   (send-super :init)
   (setq _USDis0 (round __USDis0))
   (setq _USDis1 (round __USDis1))
   (setq _USDis2 (round __USDis2))
   (setq _USDis3 (round __USDis3))
   (setq _USDis4 (round __USDis4))
   (setq _USDis5 (round __USDis5))
   (setq _USDis6 (round __USDis6))
   self)
  (:USDis0
   (&optional __USDis0)
   (if __USDis0 (setq _USDis0 __USDis0)) _USDis0)
  (:USDis1
   (&optional __USDis1)
   (if __USDis1 (setq _USDis1 __USDis1)) _USDis1)
  (:USDis2
   (&optional __USDis2)
   (if __USDis2 (setq _USDis2 __USDis2)) _USDis2)
  (:USDis3
   (&optional __USDis3)
   (if __USDis3 (setq _USDis3 __USDis3)) _USDis3)
  (:USDis4
   (&optional __USDis4)
   (if __USDis4 (setq _USDis4 __USDis4)) _USDis4)
  (:USDis5
   (&optional __USDis5)
   (if __USDis5 (setq _USDis5 __USDis5)) _USDis5)
  (:USDis6
   (&optional __USDis6)
   (if __USDis6 (setq _USDis6 __USDis6)) _USDis6)
  (:serialization-length
   ()
   (+
    ;; uint8 _USDis0
    1
    ;; uint8 _USDis1
    1
    ;; uint8 _USDis2
    1
    ;; uint8 _USDis3
    1
    ;; uint8 _USDis4
    1
    ;; uint8 _USDis5
    1
    ;; uint8 _USDis6
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _USDis0
       (write-byte _USDis0 s)
     ;; uint8 _USDis1
       (write-byte _USDis1 s)
     ;; uint8 _USDis2
       (write-byte _USDis2 s)
     ;; uint8 _USDis3
       (write-byte _USDis3 s)
     ;; uint8 _USDis4
       (write-byte _USDis4 s)
     ;; uint8 _USDis5
       (write-byte _USDis5 s)
     ;; uint8 _USDis6
       (write-byte _USDis6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _USDis0
     (setq _USDis0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _USDis1
     (setq _USDis1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _USDis2
     (setq _USDis2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _USDis3
     (setq _USDis3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _USDis4
     (setq _USDis4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _USDis5
     (setq _USDis5 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _USDis6
     (setq _USDis6 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass BaseNode::SetObstacleDistanceResponse
  :super ros::object
  :slots (_Success ))

(defmethod BaseNode::SetObstacleDistanceResponse
  (:init
   (&key
    ((:Success __Success) nil)
    )
   (send-super :init)
   (setq _Success __Success)
   self)
  (:Success
   (&optional __Success)
   (if __Success (setq _Success __Success)) _Success)
  (:serialization-length
   ()
   (+
    ;; bool _Success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Success
       (if _Success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Success
     (setq _Success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass BaseNode::SetObstacleDistance
  :super ros::object
  :slots ())

(setf (get BaseNode::SetObstacleDistance :md5sum-) "744c1032f68198df9c2b4b2ede38d155")
(setf (get BaseNode::SetObstacleDistance :datatype-) "BaseNode/SetObstacleDistance")
(setf (get BaseNode::SetObstacleDistance :request) BaseNode::SetObstacleDistanceRequest)
(setf (get BaseNode::SetObstacleDistance :response) BaseNode::SetObstacleDistanceResponse)

(defmethod BaseNode::SetObstacleDistanceRequest
  (:response () (instance BaseNode::SetObstacleDistanceResponse :init)))

(setf (get BaseNode::SetObstacleDistanceRequest :md5sum-) "744c1032f68198df9c2b4b2ede38d155")
(setf (get BaseNode::SetObstacleDistanceRequest :datatype-) "BaseNode/SetObstacleDistanceRequest")
(setf (get BaseNode::SetObstacleDistanceRequest :definition-)
      "uint8 USDis0
uint8 USDis1
uint8 USDis2
uint8 USDis3
uint8 USDis4
uint8 USDis5
uint8 USDis6
---
bool Success
")

(setf (get BaseNode::SetObstacleDistanceResponse :md5sum-) "744c1032f68198df9c2b4b2ede38d155")
(setf (get BaseNode::SetObstacleDistanceResponse :datatype-) "BaseNode/SetObstacleDistanceResponse")
(setf (get BaseNode::SetObstacleDistanceResponse :definition-)
      "uint8 USDis0
uint8 USDis1
uint8 USDis2
uint8 USDis3
uint8 USDis4
uint8 USDis5
uint8 USDis6
---
bool Success
")



(provide :BaseNode/SetObstacleDistance "744c1032f68198df9c2b4b2ede38d155")


