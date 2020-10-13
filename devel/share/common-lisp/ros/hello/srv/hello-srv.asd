
(cl:in-package :asdf)

(defsystem "hello-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ser" :depends-on ("_package_ser"))
    (:file "_package_ser" :depends-on ("_package"))
  ))