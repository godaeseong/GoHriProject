; Auto-generated. Do not edit!


(cl:in-package polly_speech-msg)


;//! \htmlinclude SpeechFeedback.msg.html

(cl:defclass <SpeechFeedback> (roslisp-msg-protocol:ros-message)
  ((is_speaking
    :reader is_speaking
    :initarg :is_speaking
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpeechFeedback (<SpeechFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name polly_speech-msg:<SpeechFeedback> is deprecated: use polly_speech-msg:SpeechFeedback instead.")))

(cl:ensure-generic-function 'is_speaking-val :lambda-list '(m))
(cl:defmethod is_speaking-val ((m <SpeechFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polly_speech-msg:is_speaking-val is deprecated.  Use polly_speech-msg:is_speaking instead.")
  (is_speaking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechFeedback>) ostream)
  "Serializes a message object of type '<SpeechFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_speaking) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechFeedback>) istream)
  "Deserializes a message object of type '<SpeechFeedback>"
    (cl:setf (cl:slot-value msg 'is_speaking) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechFeedback>)))
  "Returns string type for a message object of type '<SpeechFeedback>"
  "polly_speech/SpeechFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechFeedback)))
  "Returns string type for a message object of type 'SpeechFeedback"
  "polly_speech/SpeechFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechFeedback>)))
  "Returns md5sum for a message object of type '<SpeechFeedback>"
  "bef544c0a2b31937d81997e6bfee3687")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechFeedback)))
  "Returns md5sum for a message object of type 'SpeechFeedback"
  "bef544c0a2b31937d81997e6bfee3687")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechFeedback>)))
  "Returns full string definition for message of type '<SpeechFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool is_speaking~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechFeedback)))
  "Returns full string definition for message of type 'SpeechFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool is_speaking~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechFeedback>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechFeedback
    (cl:cons ':is_speaking (is_speaking msg))
))
