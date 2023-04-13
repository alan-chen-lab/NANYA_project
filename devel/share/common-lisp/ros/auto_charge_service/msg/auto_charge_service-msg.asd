
(cl:in-package :asdf)

(defsystem "auto_charge_service-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "aurco_info" :depends-on ("_package_aurco_info"))
    (:file "_package_aurco_info" :depends-on ("_package"))
  ))