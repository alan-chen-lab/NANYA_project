;; Auto-generated. Do not edit!


(when (boundp 'simple_navigation_goals::multi_point)
  (if (not (find-package "SIMPLE_NAVIGATION_GOALS"))
    (make-package "SIMPLE_NAVIGATION_GOALS"))
  (shadow 'multi_point (find-package "SIMPLE_NAVIGATION_GOALS")))
(unless (find-package "SIMPLE_NAVIGATION_GOALS::MULTI_POINT")
  (make-package "SIMPLE_NAVIGATION_GOALS::MULTI_POINT"))
(unless (find-package "SIMPLE_NAVIGATION_GOALS::MULTI_POINTREQUEST")
  (make-package "SIMPLE_NAVIGATION_GOALS::MULTI_POINTREQUEST"))
(unless (find-package "SIMPLE_NAVIGATION_GOALS::MULTI_POINTRESPONSE")
  (make-package "SIMPLE_NAVIGATION_GOALS::MULTI_POINTRESPONSE"))

(in-package "ROS")





(defclass simple_navigation_goals::multi_pointRequest
  :super ros::object
  :slots (_x_goal _y_goal _theta_goal _sec_goal ))

(defmethod simple_navigation_goals::multi_pointRequest
  (:init
   (&key
    ((:x_goal __x_goal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_goal __y_goal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:theta_goal __theta_goal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sec_goal __sec_goal) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x_goal __x_goal)
   (setq _y_goal __y_goal)
   (setq _theta_goal __theta_goal)
   (setq _sec_goal __sec_goal)
   self)
  (:x_goal
   (&optional __x_goal)
   (if __x_goal (setq _x_goal __x_goal)) _x_goal)
  (:y_goal
   (&optional __y_goal)
   (if __y_goal (setq _y_goal __y_goal)) _y_goal)
  (:theta_goal
   (&optional __theta_goal)
   (if __theta_goal (setq _theta_goal __theta_goal)) _theta_goal)
  (:sec_goal
   (&optional __sec_goal)
   (if __sec_goal (setq _sec_goal __sec_goal)) _sec_goal)
  (:serialization-length
   ()
   (+
    ;; float32[] _x_goal
    (* 4    (length _x_goal)) 4
    ;; float32[] _y_goal
    (* 4    (length _y_goal)) 4
    ;; float32[] _theta_goal
    (* 4    (length _theta_goal)) 4
    ;; float32[] _sec_goal
    (* 4    (length _sec_goal)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _x_goal
     (write-long (length _x_goal) s)
     (dotimes (i (length _x_goal))
       (sys::poke (elt _x_goal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y_goal
     (write-long (length _y_goal) s)
     (dotimes (i (length _y_goal))
       (sys::poke (elt _y_goal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _theta_goal
     (write-long (length _theta_goal) s)
     (dotimes (i (length _theta_goal))
       (sys::poke (elt _theta_goal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _sec_goal
     (write-long (length _sec_goal) s)
     (dotimes (i (length _sec_goal))
       (sys::poke (elt _sec_goal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _x_goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_goal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_goal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y_goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_goal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_goal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _theta_goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _theta_goal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _theta_goal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _sec_goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sec_goal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sec_goal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass simple_navigation_goals::multi_pointResponse
  :super ros::object
  :slots ())

(defmethod simple_navigation_goals::multi_pointResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass simple_navigation_goals::multi_point
  :super ros::object
  :slots ())

(setf (get simple_navigation_goals::multi_point :md5sum-) "b704f6ee097e81a8f91ed62b6e798c5d")
(setf (get simple_navigation_goals::multi_point :datatype-) "simple_navigation_goals/multi_point")
(setf (get simple_navigation_goals::multi_point :request) simple_navigation_goals::multi_pointRequest)
(setf (get simple_navigation_goals::multi_point :response) simple_navigation_goals::multi_pointResponse)

(defmethod simple_navigation_goals::multi_pointRequest
  (:response () (instance simple_navigation_goals::multi_pointResponse :init)))

(setf (get simple_navigation_goals::multi_pointRequest :md5sum-) "b704f6ee097e81a8f91ed62b6e798c5d")
(setf (get simple_navigation_goals::multi_pointRequest :datatype-) "simple_navigation_goals/multi_pointRequest")
(setf (get simple_navigation_goals::multi_pointRequest :definition-)
      "float32[] x_goal
float32[] y_goal
float32[] theta_goal
float32[] sec_goal
---
")

(setf (get simple_navigation_goals::multi_pointResponse :md5sum-) "b704f6ee097e81a8f91ed62b6e798c5d")
(setf (get simple_navigation_goals::multi_pointResponse :datatype-) "simple_navigation_goals/multi_pointResponse")
(setf (get simple_navigation_goals::multi_pointResponse :definition-)
      "float32[] x_goal
float32[] y_goal
float32[] theta_goal
float32[] sec_goal
---
")



(provide :simple_navigation_goals/multi_point "b704f6ee097e81a8f91ed62b6e798c5d")


