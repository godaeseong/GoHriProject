; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-srv)


;//! \htmlinclude GetDataList-request.msg.html

(cl:defclass <GetDataList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDataList-request (<GetDataList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDataList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDataList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<GetDataList-request> is deprecated: use mhri_msgs-srv:GetDataList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDataList-request>) ostream)
  "Serializes a message object of type '<GetDataList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDataList-request>) istream)
  "Deserializes a message object of type '<GetDataList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDataList-request>)))
  "Returns string type for a service object of type '<GetDataList-request>"
  "mhri_msgs/GetDataListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataList-request)))
  "Returns string type for a service object of type 'GetDataList-request"
  "mhri_msgs/GetDataListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDataList-request>)))
  "Returns md5sum for a message object of type '<GetDataList-request>"
  "63c9cf650edc8e21b44e24626de58676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDataList-request)))
  "Returns md5sum for a message object of type 'GetDataList-request"
  "63c9cf650edc8e21b44e24626de58676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDataList-request>)))
  "Returns full string definition for message of type '<GetDataList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDataList-request)))
  "Returns full string definition for message of type 'GetDataList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDataList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDataList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDataList-request
))
;//! \htmlinclude GetDataList-response.msg.html

(cl:defclass <GetDataList-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (data_list
    :reader data_list
    :initarg :data_list
    :type cl:string
    :initform ""))
)

(cl:defclass GetDataList-response (<GetDataList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDataList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDataList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<GetDataList-response> is deprecated: use mhri_msgs-srv:GetDataList-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetDataList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:result-val is deprecated.  Use mhri_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'data_list-val :lambda-list '(m))
(cl:defmethod data_list-val ((m <GetDataList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:data_list-val is deprecated.  Use mhri_msgs-srv:data_list instead.")
  (data_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDataList-response>) ostream)
  "Serializes a message object of type '<GetDataList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDataList-response>) istream)
  "Deserializes a message object of type '<GetDataList-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_list) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_list) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDataList-response>)))
  "Returns string type for a service object of type '<GetDataList-response>"
  "mhri_msgs/GetDataListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataList-response)))
  "Returns string type for a service object of type 'GetDataList-response"
  "mhri_msgs/GetDataListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDataList-response>)))
  "Returns md5sum for a message object of type '<GetDataList-response>"
  "63c9cf650edc8e21b44e24626de58676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDataList-response)))
  "Returns md5sum for a message object of type 'GetDataList-response"
  "63c9cf650edc8e21b44e24626de58676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDataList-response>)))
  "Returns full string definition for message of type '<GetDataList-response>"
  (cl:format cl:nil "bool result~%string data_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDataList-response)))
  "Returns full string definition for message of type 'GetDataList-response"
  (cl:format cl:nil "bool result~%string data_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDataList-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'data_list))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDataList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDataList-response
    (cl:cons ':result (result msg))
    (cl:cons ':data_list (data_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDataList)))
  'GetDataList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDataList)))
  'GetDataList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataList)))
  "Returns string type for a service object of type '<GetDataList>"
  "mhri_msgs/GetDataList")