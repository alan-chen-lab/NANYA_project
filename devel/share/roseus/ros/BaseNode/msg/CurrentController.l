;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::CurrentController)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'CurrentController (find-package "BASENODE")))
(unless (find-package "BASENODE::CURRENTCONTROLLER")
  (make-package "BASENODE::CURRENTCONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude CurrentController.msg.html


(defclass BaseNode::CurrentController
  :super ros::object
  :slots (_current_controller _current_action _current_controller_priority _current_action_priority ))

(defmethod BaseNode::CurrentController
  (:init
   (&key
    ((:current_controller __current_controller) "")
    ((:current_action __current_action) "")
    ((:current_controller_priority __current_controller_priority) 0)
    ((:current_action_priority __current_action_priority) 0)
    )
   (send-super :init)
   (setq _current_controller (string __current_controller))
   (setq _current_action (string __current_action))
   (setq _current_controller_priority (round __current_controller_priority))
   (setq _current_action_priority (round __current_action_priority))
   self)
  (:current_controller
   (&optional __current_controller)
   (if __current_controller (setq _current_controller __current_controller)) _current_controller)
  (:current_action
   (&optional __current_action)
   (if __current_action (setq _current_action __current_action)) _current_action)
  (:current_controller_priority
   (&optional __current_controller_priority)
   (if __current_controller_priority (setq _current_controller_priority __current_controller_priority)) _current_controller_priority)
  (:current_action_priority
   (&optional __current_action_priority)
   (if __current_action_priority (setq _current_action_priority __current_action_priority)) _current_action_priority)
  (:serialization-length
   ()
   (+
    ;; string _current_controller
    4 (length _current_controller)
    ;; string _current_action
    4 (length _current_action)
    ;; uint64 _current_controller_priority
    8
    ;; uint64 _current_action_priority
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _current_controller
       (write-long (length _current_controller) s) (princ _current_controller s)
     ;; string _current_action
       (write-long (length _current_action) s) (princ _current_action s)
     ;; uint64 _current_controller_priority
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _current_controller_priority (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _current_controller_priority) (= (length (_current_controller_priority . bv)) 2)) ;; bignum
              (write-long (ash (elt (_current_controller_priority . bv) 0) 0) s)
              (write-long (ash (elt (_current_controller_priority . bv) 1) -1) s))
             ((and (class _current_controller_priority) (= (length (_current_controller_priority . bv)) 1)) ;; big1
              (write-long (elt (_current_controller_priority . bv) 0) s)
              (write-long (if (>= _current_controller_priority 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _current_controller_priority s)(write-long (if (>= _current_controller_priority 0) 0 #xffffffff) s)))
     ;; uint64 _current_action_priority
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _current_action_priority (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _current_action_priority) (= (length (_current_action_priority . bv)) 2)) ;; bignum
              (write-long (ash (elt (_current_action_priority . bv) 0) 0) s)
              (write-long (ash (elt (_current_action_priority . bv) 1) -1) s))
             ((and (class _current_action_priority) (= (length (_current_action_priority . bv)) 1)) ;; big1
              (write-long (elt (_current_action_priority . bv) 0) s)
              (write-long (if (>= _current_action_priority 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _current_action_priority s)(write-long (if (>= _current_action_priority 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _current_controller
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_controller (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _current_controller_priority
     
#+(or :alpha :irix6 :x86_64)
      (setf _current_controller_priority (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _current_controller_priority (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _current_action_priority
     
#+(or :alpha :irix6 :x86_64)
      (setf _current_action_priority (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _current_action_priority (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get BaseNode::CurrentController :md5sum-) "ddc6babeedae6888528de73484291c2d")
(setf (get BaseNode::CurrentController :datatype-) "BaseNode/CurrentController")
(setf (get BaseNode::CurrentController :definition-)
      "string current_controller
string current_action
uint64 current_controller_priority
uint64 current_action_priority
")



(provide :BaseNode/CurrentController "ddc6babeedae6888528de73484291c2d")


