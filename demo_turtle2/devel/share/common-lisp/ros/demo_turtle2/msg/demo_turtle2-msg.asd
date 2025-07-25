
(cl:in-package :asdf)

(defsystem "demo_turtle2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "turtle" :depends-on ("_package_turtle"))
    (:file "_package_turtle" :depends-on ("_package"))
  ))