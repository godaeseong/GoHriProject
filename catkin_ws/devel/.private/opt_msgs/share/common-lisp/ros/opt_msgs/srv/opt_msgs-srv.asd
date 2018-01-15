
(cl:in-package :asdf)

(defsystem "opt_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "OPTSensor" :depends-on ("_package_OPTSensor"))
    (:file "_package_OPTSensor" :depends-on ("_package"))
    (:file "OPTTransform" :depends-on ("_package_OPTTransform"))
    (:file "_package_OPTTransform" :depends-on ("_package"))
  ))