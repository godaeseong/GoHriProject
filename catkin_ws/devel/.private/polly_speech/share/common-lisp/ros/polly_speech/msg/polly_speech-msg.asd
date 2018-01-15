
(cl:in-package :asdf)

(defsystem "polly_speech-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SpeechAction" :depends-on ("_package_SpeechAction"))
    (:file "_package_SpeechAction" :depends-on ("_package"))
    (:file "SpeechActionFeedback" :depends-on ("_package_SpeechActionFeedback"))
    (:file "_package_SpeechActionFeedback" :depends-on ("_package"))
    (:file "SpeechActionGoal" :depends-on ("_package_SpeechActionGoal"))
    (:file "_package_SpeechActionGoal" :depends-on ("_package"))
    (:file "SpeechActionResult" :depends-on ("_package_SpeechActionResult"))
    (:file "_package_SpeechActionResult" :depends-on ("_package"))
    (:file "SpeechFeedback" :depends-on ("_package_SpeechFeedback"))
    (:file "_package_SpeechFeedback" :depends-on ("_package"))
    (:file "SpeechGoal" :depends-on ("_package_SpeechGoal"))
    (:file "_package_SpeechGoal" :depends-on ("_package"))
    (:file "SpeechResult" :depends-on ("_package_SpeechResult"))
    (:file "_package_SpeechResult" :depends-on ("_package"))
  ))