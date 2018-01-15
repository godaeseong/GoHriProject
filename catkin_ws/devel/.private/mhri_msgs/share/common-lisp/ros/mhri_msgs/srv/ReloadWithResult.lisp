; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-srv)


;//! \htmlinclude ReloadWithResult-request.msg.html

(cl:defclass <ReloadWithResult-request> (roslisp-msg-protocol:ros-message)
  ((script_path
    :reader script_path
    :initarg :script_path
    :type cl:string
    :initform ""))
)

(cl:defclass ReloadWithResult-request (<ReloadWithResult-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReloadWithResult-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReloadWithResult-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<ReloadWithResult-request> is deprecated: use mhri_msgs-srv:ReloadWithResult-request instead.")))

(cl:ensure-generic-function 'script_path-val :lambda-list '(m))
(cl:defmethod script_path-val ((m <ReloadWithResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:script_path-val is deprecated.  Use mhri_msgs-srv:script_path instead.")
  (script_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReloadWithResult-request>) ostream)
  "Serializes a message object of type '<ReloadWithResult-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'script_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'script_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReloadWithResult-request>) istream)
  "Deserializes a message object of type '<ReloadWithResult-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'script_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'script_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReloadWithResult-request>)))
  "Returns string type for a service object of type '<ReloadWithResult-request>"
  "mhri_msgs/ReloadWithResultRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadWithResult-request)))
  "Returns string type for a service object of type 'ReloadWithResult-request"
  "mhri_msgs/ReloadWithResultRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReloadWithResult-request>)))
  "Returns md5sum for a message object of type '<ReloadWithResult-request>"
  "433949ba24a221b6192129df3d830876")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReloadWithResult-request)))
  "Returns md5sum for a message object of type 'ReloadWithResult-request"
  "433949ba24a221b6192129df3d830876")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReloadWithResult-request>)))
  "Returns full string definition for message of type '<ReloadWithResult-request>"
  (cl:format cl:nil "string script_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReloadWithResult-request)))
  "Returns full string definition for message of type 'ReloadWithResult-request"
  (cl:format cl:nil "string script_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReloadWithResult-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'script_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReloadWithResult-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReloadWithResult-request
    (cl:cons ':script_path (script_path msg))
))
;//! \htmlinclude ReloadWithResult-response.msg.html

(cl:defclass <ReloadWithResult-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReloadWithResult-response (<ReloadWithResult-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReloadWithResult-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReloadWithResult-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<ReloadWithResult-response> is deprecated: use mhri_msgs-srv:ReloadWithResult-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ReloadWithResult-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:result-val is deprecated.  Use mhri_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReloadWithResult-response>) ostream)
  "Serializes a message object of type '<ReloadWithResult-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReloadWithResult-response>) istream)
  "Deserializes a message object of type '<ReloadWithResult-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReloadWithResult-response>)))
  "Returns string type for a service object of type '<ReloadWithResult-response>"
  "mhri_msgs/ReloadWithResultResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadWithResult-response)))
  "Returns string type for a service object of type 'ReloadWithResult-response"
  "mhri_msgs/ReloadWithResultResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReloadWithResult-response>)))
  "Returns md5sum for a message object of type '<ReloadWithResult-response>"
  "433949ba24a221b6192129df3d830876")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReloadWithResult-response)))
  "Returns md5sum for a message object of type 'ReloadWithResult-response"
  "433949ba24a221b6192129df3d830876")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReloadWithResult-response>)))
  "Returns full string definition for message of type '<ReloadWithResult-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReloadWithResult-response)))
  "Returns full string definition for message of type 'ReloadWithResult-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReloadWithResult-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReloadWithResult-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReloadWithResult-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReloadWithResult)))
  'ReloadWithResult-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReloadWithResult)))
  'ReloadWithResult-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadWithResult)))
  "Returns string type for a service object of type '<ReloadWithResult>"
  "mhri_msgs/ReloadWithResult")