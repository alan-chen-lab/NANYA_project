
(cl:in-package :asdf)

(defsystem "simple_navigation_goals-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "multi_point" :depends-on ("_package_multi_point"))
    (:file "_package_multi_point" :depends-on ("_package"))
  ))