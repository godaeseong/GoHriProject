
(cl:in-package :asdf)

(defsystem "face_recognition_facenet-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "RecognizedResult" :depends-on ("_package_RecognizedResult"))
    (:file "_package_RecognizedResult" :depends-on ("_package"))
  ))