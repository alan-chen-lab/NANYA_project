
(cl:in-package :asdf)

(defsystem "simple_navigation_goals-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "auto_info" :depends-on ("_package_auto_info"))
    (:file "_package_auto_info" :depends-on ("_package"))
  ))