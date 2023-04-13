;; Auto-generated. Do not edit!


(when (boundp 'auto_charge_service::auto_charge_srv)
  (if (not (find-package "AUTO_CHARGE_SERVICE"))
    (make-package "AUTO_CHARGE_SERVICE"))
  (shadow 'auto_charge_srv (find-package "AUTO_CHARGE_SERVICE")))
(unless (find-package "AUTO_CHARGE_SERVICE::AUTO_CHARGE_SRV")
  (make-package "AUTO_CHARGE_SERVICE::AUTO_CHARGE_SRV"))
(unless (find-package "AUTO_CHARGE_SERVICE::AUTO_CHARGE_SRVREQUEST")
  (make-package "AUTO_CHARGE_SERVICE::AUTO_CHARGE_SRVREQUEST"))
(unless (find-package "AUTO_CHARGE_SERVICE::AUTO_CHARGE_SRVRESPONSE")
  (make-package "AUTO_CHARGE_SERVICE::AUTO_CHARGE_SRVRESPONSE"))

(in-package "ROS")





(defclass auto_charge_service::auto_charge_srvRequest
  :super ros::object
  :slots (_goal_x _goal_y ))

(defmethod auto_charge_service::auto_charge_srvRequest
  (:init
   (&key
    ((:goal_x __goal_x) 0.0)
    ((:goal_y __goal_y) 0.0)
    )
   (send-super :init)
   (setq _goal_x (float __goal_x))
   (setq _goal_y (float __goal_y))
   self)
  (:goal_x
   (&optional __goal_x)
   (if __goal_x (setq _goal_x __goal_x)) _goal_x)
  (:goal_y
   (&optional __goal_y)
   (if __goal_y (setq _goal_y __goal_y)) _goal_y)
  (:serialization-length
   ()
   (+
    ;; float64 _goal_x
    8
    ;; float64 _goal_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _goal_x
       (sys::poke _goal_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _goal_y
       (sys::poke _goal_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _goal_x
     (setq _goal_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _goal_y
     (setq _goal_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_charge_service::auto_charge_srvResponse
  :super ros::object
  :slots (_goal_x _goal_y ))

(defmethod auto_charge_service::auto_charge_srvResponse
  (:init
   (&key
    ((:goal_x __goal_x) 0.0)
    ((:goal_y __goal_y) 0.0)
    )
   (send-super :init)
   (setq _goal_x (float __goal_x))
   (setq _goal_y (float __goal_y))
   self)
  (:goal_x
   (&optional __goal_x)
   (if __goal_x (setq _goal_x __goal_x)) _goal_x)
  (:goal_y
   (&optional __goal_y)
   (if __goal_y (setq _goal_y __goal_y)) _goal_y)
  (:serialization-length
   ()
   (+
    ;; float64 _goal_x
    8
    ;; float64 _goal_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _goal_x
       (sys::poke _goal_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _goal_y
       (sys::poke _goal_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _goal_x
     (setq _goal_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _goal_y
     (setq _goal_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass auto_charge_service::auto_charge_srv
  :super ros::object
  :slots ())

(setf (get auto_charge_service::auto_charge_srv :md5sum-) "1fb8fd8311cc5d196025d0fcca8c666b")
(setf (get auto_charge_service::auto_charge_srv :datatype-) "auto_charge_service/auto_charge_srv")
(setf (get auto_charge_service::auto_charge_srv :request) auto_charge_service::auto_charge_srvRequest)
(setf (get auto_charge_service::auto_charge_srv :response) auto_charge_service::auto_charge_srvResponse)

(defmethod auto_charge_service::auto_charge_srvRequest
  (:response () (instance auto_charge_service::auto_charge_srvResponse :init)))

(setf (get auto_charge_service::auto_charge_srvRequest :md5sum-) "1fb8fd8311cc5d196025d0fcca8c666b")
(setf (get auto_charge_service::auto_charge_srvRequest :datatype-) "auto_charge_service/auto_charge_srvRequest")
(setf (get auto_charge_service::auto_charge_srvRequest :definition-)
      "float64 goal_x
float64 goal_y
---
float64 goal_x
float64 goal_y
")

(setf (get auto_charge_service::auto_charge_srvResponse :md5sum-) "1fb8fd8311cc5d196025d0fcca8c666b")
(setf (get auto_charge_service::auto_charge_srvResponse :datatype-) "auto_charge_service/auto_charge_srvResponse")
(setf (get auto_charge_service::auto_charge_srvResponse :definition-)
      "float64 goal_x
float64 goal_y
---
float64 goal_x
float64 goal_y
")



(provide :auto_charge_service/auto_charge_srv "1fb8fd8311cc5d196025d0fcca8c666b")


