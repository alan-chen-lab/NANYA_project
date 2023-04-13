
(cl:in-package :asdf)

(defsystem "auto_charge_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "auto_charge_srv" :depends-on ("_package_auto_charge_srv"))
    (:file "_package_auto_charge_srv" :depends-on ("_package"))
  ))