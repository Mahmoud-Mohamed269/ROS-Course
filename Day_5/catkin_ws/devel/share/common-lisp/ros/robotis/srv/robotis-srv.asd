
(cl:in-package :asdf)

(defsystem "robotis-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "counter" :depends-on ("_package_counter"))
    (:file "_package_counter" :depends-on ("_package"))
  ))