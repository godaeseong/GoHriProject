; Auto-generated. Do not edit!


(cl:in-package mhri_social_msgs-msg)


;//! \htmlinclude RecognizedWord.msg.html

(cl:defclass <RecognizedWord> (roslisp-msg-protocol:ros-message)
  ((recognized_word
    :reader recognized_word
    :initarg :recognized_word
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass RecognizedWord (<RecognizedWord>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizedWord>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizedWord)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_social_msgs-msg:<RecognizedWord> is deprecated: use mhri_social_msgs-msg:RecognizedWord instead.")))

(cl:ensure-generic-function 'recognized_word-val :lambda-list '(m))
(cl:defmethod recognized_word-val ((m <RecognizedWord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_social_msgs-msg:recognized_word-val is deprecated.  Use mhri_social_msgs-msg:recognized_word instead.")
  (recognized_word m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <RecognizedWord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_social_msgs-msg:confidence-val is deprecated.  Use mhri_social_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizedWord>) ostream)
  "Serializes a message object of type '<RecognizedWord>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'recognized_word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'recognized_word))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizedWord>) istream)
  "Deserializes a message object of type '<RecognizedWord>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recognized_word) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'recognized_word) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizedWord>)))
  "Returns string type for a message object of type '<RecognizedWord>"
  "mhri_social_msgs/RecognizedWord")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizedWord)))
  "Returns string type for a message object of type 'RecognizedWord"
  "mhri_social_msgs/RecognizedWord")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizedWord>)))
  "Returns md5sum for a message object of type '<RecognizedWord>"
  "51c6e3e563ea88eab63cbd1935da005e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizedWord)))
  "Returns md5sum for a message object of type 'RecognizedWord"
  "51c6e3e563ea88eab63cbd1935da005e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizedWord>)))
  "Returns full string definition for message of type '<RecognizedWord>"
  (cl:format cl:nil "string recognized_word~%float64 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizedWord)))
  "Returns full string definition for message of type 'RecognizedWord"
  (cl:format cl:nil "string recognized_word~%float64 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizedWord>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'recognized_word))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizedWord>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizedWord
    (cl:cons ':recognized_word (recognized_word msg))
    (cl:cons ':confidence (confidence msg))
))
