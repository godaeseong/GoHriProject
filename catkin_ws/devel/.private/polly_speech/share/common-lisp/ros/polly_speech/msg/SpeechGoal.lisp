; Auto-generated. Do not edit!


(cl:in-package polly_speech-msg)


;//! \htmlinclude SpeechGoal.msg.html

(cl:defclass <SpeechGoal> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass SpeechGoal (<SpeechGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name polly_speech-msg:<SpeechGoal> is deprecated: use polly_speech-msg:SpeechGoal instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <SpeechGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polly_speech-msg:text-val is deprecated.  Use polly_speech-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechGoal>) ostream)
  "Serializes a message object of type '<SpeechGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechGoal>) istream)
  "Deserializes a message object of type '<SpeechGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechGoal>)))
  "Returns string type for a message object of type '<SpeechGoal>"
  "polly_speech/SpeechGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechGoal)))
  "Returns string type for a message object of type 'SpeechGoal"
  "polly_speech/SpeechGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechGoal>)))
  "Returns md5sum for a message object of type '<SpeechGoal>"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechGoal)))
  "Returns md5sum for a message object of type 'SpeechGoal"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechGoal>)))
  "Returns full string definition for message of type '<SpeechGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechGoal)))
  "Returns full string definition for message of type 'SpeechGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechGoal
    (cl:cons ':text (text msg))
))