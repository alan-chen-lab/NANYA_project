
(cl:in-package :asdf)

(defsystem "BaseNode-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetObstacleDistance" :depends-on ("_package_GetObstacleDistance"))
    (:file "_package_GetObstacleDistance" :depends-on ("_package"))
    (:file "LEDReport" :depends-on ("_package_LEDReport"))
    (:file "_package_LEDReport" :depends-on ("_package"))
    (:file "SetObstacleDistance" :depends-on ("_package_SetObstacleDistance"))
    (:file "_package_SetObstacleDistance" :depends-on ("_package"))
  ))