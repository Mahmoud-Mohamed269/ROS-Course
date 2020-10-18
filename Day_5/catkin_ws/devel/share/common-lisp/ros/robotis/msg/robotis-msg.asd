
(cl:in-package :asdf)

(defsystem "robotis-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mahmoud" :depends-on ("_package_mahmoud"))
    (:file "_package_mahmoud" :depends-on ("_package"))
  ))