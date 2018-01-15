; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-srv)


;//! \htmlinclude GetInstalledGestures-request.msg.html

(cl:defclass <GetInstalledGestures-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetInstalledGestures-request (<GetInstalledGestures-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInstalledGestures-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInstalledGestures-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<GetInstalledGestures-request> is deprecated: use mhri_msgs-srv:GetInstalledGestures-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInstalledGestures-request>) ostream)
  "Serializes a message object of type '<GetInstalledGestures-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInstalledGestures-request>) istream)
  "Deserializes a message object of type '<GetInstalledGestures-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInstalledGestures-request>)))
  "Returns string type for a service object of type '<GetInstalledGestures-request>"
  "mhri_msgs/GetInstalledGesturesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInstalledGestures-request)))
  "Returns string type for a service object of type 'GetInstalledGestures-request"
  "mhri_msgs/GetInstalledGesturesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInstalledGestures-request>)))
  "Returns md5sum for a message object of type '<GetInstalledGestures-request>"
  "5365bf3eb93d84030fba702bd892ff42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInstalledGestures-request)))
  "Returns md5sum for a message object of type 'GetInstalledGestures-request"
  "5365bf3eb93d84030fba702bd892ff42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInstalledGestures-request>)))
  "Returns full string definition for message of type '<GetInstalledGestures-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInstalledGestures-request)))
  "Returns full string definition for message of type 'GetInstalledGestures-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInstalledGestures-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInstalledGestures-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInstalledGestures-request
))
;//! \htmlinclude GetInstalledGestures-response.msg.html

(cl:defclass <GetInstalledGestures-response> (roslisp-msg-protocol:ros-message)
  ((gestures
    :reader gestures
    :initarg :gestures
    :type cl:string
    :initform ""))
)

(cl:defclass GetInstalledGestures-response (<GetInstalledGestures-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInstalledGestures-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInstalledGestures-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<GetInstalledGestures-response> is deprecated: use mhri_msgs-srv:GetInstalledGestures-response instead.")))

(cl:ensure-generic-function 'gestures-val :lambda-list '(m))
(cl:defmethod gestures-val ((m <GetInstalledGestures-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:gestures-val is deprecated.  Use mhri_msgs-srv:gestures instead.")
  (gestures m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInstalledGestures-response>) ostream)
  "Serializes a message object of type '<GetInstalledGestures-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gestures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gestures))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInstalledGestures-response>) istream)
  "Deserializes a message object of type '<GetInstalledGestures-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gestures) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gestures) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInstalledGestures-response>)))
  "Returns string type for a service object of type '<GetInstalledGestures-response>"
  "mhri_msgs/GetInstalledGesturesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInstalledGestures-response)))
  "Returns string type for a service object of type 'GetInstalledGestures-response"
  "mhri_msgs/GetInstalledGesturesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInstalledGestures-response>)))
  "Returns md5sum for a message object of type '<GetInstalledGestures-response>"
  "5365bf3eb93d84030fba702bd892ff42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInstalledGestures-response)))
  "Returns md5sum for a message object of type 'GetInstalledGestures-response"
  "5365bf3eb93d84030fba702bd892ff42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInstalledGestures-response>)))
  "Returns full string definition for message of type '<GetInstalledGestures-response>"
  (cl:format cl:nil "string gestures~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInstalledGestures-response)))
  "Returns full string definition for message of type 'GetInstalledGestures-response"
  (cl:format cl:nil "string gestures~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInstalledGestures-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gestures))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInstalledGestures-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInstalledGestures-response
    (cl:cons ':gestures (gestures msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInstalledGestures)))
  'GetInstalledGestures-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInstalledGestures)))
  'GetInstalledGestures-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInstalledGestures)))
  "Returns string type for a service object of type '<GetInstalledGestures>"
  "mhri_msgs/GetInstalledGestures")