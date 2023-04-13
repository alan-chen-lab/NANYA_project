;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::IMUReport)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'IMUReport (find-package "BASENODE")))
(unless (find-package "BASENODE::IMUREPORT")
  (make-package "BASENODE::IMUREPORT"))

(in-package "ROS")
;;//! \htmlinclude IMUReport.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass BaseNode::IMUReport
  :super ros::object
  :slots (_linear_acc _angular_acc ))

(defmethod BaseNode::IMUReport
  (:init
   (&key
    ((:linear_acc __linear_acc) (instance geometry_msgs::Vector3 :init))
    ((:angular_acc __angular_acc) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _linear_acc __linear_acc)
   (setq _angular_acc __angular_acc)
   self)
  (:linear_acc
   (&rest __linear_acc)
   (if (keywordp (car __linear_acc))
       (send* _linear_acc __linear_acc)
     (progn
       (if __linear_acc (setq _linear_acc (car __linear_acc)))
       _linear_acc)))
  (:angular_acc
   (&rest __angular_acc)
   (if (keywordp (car __angular_acc))
       (send* _angular_acc __angular_acc)
     (progn
       (if __angular_acc (setq _angular_acc (car __angular_acc)))
       _angular_acc)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _linear_acc
    (send _linear_acc :serialization-length)
    ;; geometry_msgs/Vector3 _angular_acc
    (send _angular_acc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _linear_acc
       (send _linear_acc :serialize s)
     ;; geometry_msgs/Vector3 _angular_acc
       (send _angular_acc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _linear_acc
     (send _linear_acc :deserialize buf ptr-) (incf ptr- (send _linear_acc :serialization-length))
   ;; geometry_msgs/Vector3 _angular_acc
     (send _angular_acc :deserialize buf ptr-) (incf ptr- (send _angular_acc :serialization-length))
   ;;
   self)
  )

(setf (get BaseNode::IMUReport :md5sum-) "1fa1cce6f2c843c4ab29f13782961f52")
(setf (get BaseNode::IMUReport :datatype-) "BaseNode/IMUReport")
(setf (get BaseNode::IMUReport :definition-)
      "geometry_msgs/Vector3 linear_acc
geometry_msgs/Vector3 angular_acc
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :BaseNode/IMUReport "1fa1cce6f2c843c4ab29f13782961f52")


