;; Auto-generated. Do not edit!


(when (boundp 'BaseNode::LEDReport)
  (if (not (find-package "BASENODE"))
    (make-package "BASENODE"))
  (shadow 'LEDReport (find-package "BASENODE")))
(unless (find-package "BASENODE::LEDREPORT")
  (make-package "BASENODE::LEDREPORT"))
(unless (find-package "BASENODE::LEDREPORTREQUEST")
  (make-package "BASENODE::LEDREPORTREQUEST"))
(unless (find-package "BASENODE::LEDREPORTRESPONSE")
  (make-package "BASENODE::LEDREPORTRESPONSE"))

(in-package "ROS")





(defclass BaseNode::LEDReportRequest
  :super ros::object
  :slots (_get_led ))

(defmethod BaseNode::LEDReportRequest
  (:init
   (&key
    ((:get_led __get_led) nil)
    )
   (send-super :init)
   (setq _get_led __get_led)
   self)
  (:get_led
   (&optional __get_led)
   (if __get_led (setq _get_led __get_led)) _get_led)
  (:serialization-length
   ()
   (+
    ;; bool _get_led
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _get_led
       (if _get_led (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _get_led
     (setq _get_led (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass BaseNode::LEDReportResponse
  :super ros::object
  :slots (_red_led _green_led _blue_led _left_dig_led _right_dig_led ))

(defmethod BaseNode::LEDReportResponse
  (:init
   (&key
    ((:red_led __red_led) 0)
    ((:green_led __green_led) 0)
    ((:blue_led __blue_led) 0)
    ((:left_dig_led __left_dig_led) nil)
    ((:right_dig_led __right_dig_led) nil)
    )
   (send-super :init)
   (setq _red_led (round __red_led))
   (setq _green_led (round __green_led))
   (setq _blue_led (round __blue_led))
   (setq _left_dig_led __left_dig_led)
   (setq _right_dig_led __right_dig_led)
   self)
  (:red_led
   (&optional __red_led)
   (if __red_led (setq _red_led __red_led)) _red_led)
  (:green_led
   (&optional __green_led)
   (if __green_led (setq _green_led __green_led)) _green_led)
  (:blue_led
   (&optional __blue_led)
   (if __blue_led (setq _blue_led __blue_led)) _blue_led)
  (:left_dig_led
   (&optional __left_dig_led)
   (if __left_dig_led (setq _left_dig_led __left_dig_led)) _left_dig_led)
  (:right_dig_led
   (&optional __right_dig_led)
   (if __right_dig_led (setq _right_dig_led __right_dig_led)) _right_dig_led)
  (:serialization-length
   ()
   (+
    ;; uint8 _red_led
    1
    ;; uint8 _green_led
    1
    ;; uint8 _blue_led
    1
    ;; bool _left_dig_led
    1
    ;; bool _right_dig_led
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _red_led
       (write-byte _red_led s)
     ;; uint8 _green_led
       (write-byte _green_led s)
     ;; uint8 _blue_led
       (write-byte _blue_led s)
     ;; bool _left_dig_led
       (if _left_dig_led (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_dig_led
       (if _right_dig_led (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _red_led
     (setq _red_led (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _green_led
     (setq _green_led (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _blue_led
     (setq _blue_led (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _left_dig_led
     (setq _left_dig_led (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_dig_led
     (setq _right_dig_led (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass BaseNode::LEDReport
  :super ros::object
  :slots ())

(setf (get BaseNode::LEDReport :md5sum-) "5281860a67e91bcd8b35c89d74678b97")
(setf (get BaseNode::LEDReport :datatype-) "BaseNode/LEDReport")
(setf (get BaseNode::LEDReport :request) BaseNode::LEDReportRequest)
(setf (get BaseNode::LEDReport :response) BaseNode::LEDReportResponse)

(defmethod BaseNode::LEDReportRequest
  (:response () (instance BaseNode::LEDReportResponse :init)))

(setf (get BaseNode::LEDReportRequest :md5sum-) "5281860a67e91bcd8b35c89d74678b97")
(setf (get BaseNode::LEDReportRequest :datatype-) "BaseNode/LEDReportRequest")
(setf (get BaseNode::LEDReportRequest :definition-)
      "bool get_led
---
uint8 red_led
uint8 green_led
uint8 blue_led
bool left_dig_led
bool right_dig_led

")

(setf (get BaseNode::LEDReportResponse :md5sum-) "5281860a67e91bcd8b35c89d74678b97")
(setf (get BaseNode::LEDReportResponse :datatype-) "BaseNode/LEDReportResponse")
(setf (get BaseNode::LEDReportResponse :definition-)
      "bool get_led
---
uint8 red_led
uint8 green_led
uint8 blue_led
bool left_dig_led
bool right_dig_led

")



(provide :BaseNode/LEDReport "5281860a67e91bcd8b35c89d74678b97")


