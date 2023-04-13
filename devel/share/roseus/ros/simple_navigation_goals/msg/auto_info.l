;; Auto-generated. Do not edit!


(when (boundp 'simple_navigation_goals::auto_info)
  (if (not (find-package "SIMPLE_NAVIGATION_GOALS"))
    (make-package "SIMPLE_NAVIGATION_GOALS"))
  (shadow 'auto_info (find-package "SIMPLE_NAVIGATION_GOALS")))
(unless (find-package "SIMPLE_NAVIGATION_GOALS::AUTO_INFO")
  (make-package "SIMPLE_NAVIGATION_GOALS::AUTO_INFO"))

(in-package "ROS")
;;//! \htmlinclude auto_info.msg.html


(defclass simple_navigation_goals::auto_info
  :super ros::object
  :slots (_info ))

(defmethod simple_navigation_goals::auto_info
  (:init
   (&key
    ((:info __info) nil)
    )
   (send-super :init)
   (setq _info __info)
   self)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; bool _info
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _info
       (if _info (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _info
     (setq _info (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get simple_navigation_goals::auto_info :md5sum-) "65d497f9cf95d78ecfe2d84e8a1a7ad3")
(setf (get simple_navigation_goals::auto_info :datatype-) "simple_navigation_goals/auto_info")
(setf (get simple_navigation_goals::auto_info :definition-)
      "bool info
")



(provide :simple_navigation_goals/auto_info "65d497f9cf95d78ecfe2d84e8a1a7ad3")


