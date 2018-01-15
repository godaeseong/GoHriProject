
(cl:in-package :asdf)

(defsystem "mhri_social_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "FaceDetection3D" :depends-on ("_package_FaceDetection3D"))
    (:file "_package_FaceDetection3D" :depends-on ("_package"))
    (:file "RecognizedWord" :depends-on ("_package_RecognizedWord"))
    (:file "_package_RecognizedWord" :depends-on ("_package"))
  ))