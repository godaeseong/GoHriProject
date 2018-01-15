
(cl:in-package :asdf)

(defsystem "google_cloud_speech-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RecognizedWord" :depends-on ("_package_RecognizedWord"))
    (:file "_package_RecognizedWord" :depends-on ("_package"))
  ))