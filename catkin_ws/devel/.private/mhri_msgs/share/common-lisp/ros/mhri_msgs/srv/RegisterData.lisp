; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-srv)


;//! \htmlinclude RegisterData-request.msg.html

(cl:defclass <RegisterData-request> (roslisp-msg-protocol:ros-message)
  ((perception_name
    :reader perception_name
    :initarg :perception_name
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass RegisterData-request (<RegisterData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<RegisterData-request> is deprecated: use mhri_msgs-srv:RegisterData-request instead.")))

(cl:ensure-generic-function 'perception_name-val :lambda-list '(m))
(cl:defmethod perception_name-val ((m <RegisterData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:perception_name-val is deprecated.  Use mhri_msgs-srv:perception_name instead.")
  (perception_name m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RegisterData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:data-val is deprecated.  Use mhri_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterData-request>) ostream)
  "Serializes a message object of type '<RegisterData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'perception_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'perception_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterData-request>) istream)
  "Deserializes a message object of type '<RegisterData-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'perception_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'perception_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterData-request>)))
  "Returns string type for a service object of type '<RegisterData-request>"
  "mhri_msgs/RegisterDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterData-request)))
  "Returns string type for a service object of type 'RegisterData-request"
  "mhri_msgs/RegisterDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterData-request>)))
  "Returns md5sum for a message object of type '<RegisterData-request>"
  "85ca8cb48d3151ee2dbe18431e655105")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterData-request)))
  "Returns md5sum for a message object of type 'RegisterData-request"
  "85ca8cb48d3151ee2dbe18431e655105")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterData-request>)))
  "Returns full string definition for message of type '<RegisterData-request>"
  (cl:format cl:nil "string perception_name~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterData-request)))
  "Returns full string definition for message of type 'RegisterData-request"
  (cl:format cl:nil "string perception_name~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'perception_name))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterData-request
    (cl:cons ':perception_name (perception_name msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude RegisterData-response.msg.html

(cl:defclass <RegisterData-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RegisterData-response (<RegisterData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<RegisterData-response> is deprecated: use mhri_msgs-srv:RegisterData-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RegisterData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:result-val is deprecated.  Use mhri_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterData-response>) ostream)
  "Serializes a message object of type '<RegisterData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterData-response>) istream)
  "Deserializes a message object of type '<RegisterData-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterData-response>)))
  "Returns string type for a service object of type '<RegisterData-response>"
  "mhri_msgs/RegisterDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterData-response)))
  "Returns string type for a service object of type 'RegisterData-response"
  "mhri_msgs/RegisterDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterData-response>)))
  "Returns md5sum for a message object of type '<RegisterData-response>"
  "85ca8cb48d3151ee2dbe18431e655105")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterData-response)))
  "Returns md5sum for a message object of type 'RegisterData-response"
  "85ca8cb48d3151ee2dbe18431e655105")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterData-response>)))
  "Returns full string definition for message of type '<RegisterData-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterData-response)))
  "Returns full string definition for message of type 'RegisterData-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterData-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterData)))
  'RegisterData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterData)))
  'RegisterData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterData)))
  "Returns string type for a service object of type '<RegisterData>"
  "mhri_msgs/RegisterData")