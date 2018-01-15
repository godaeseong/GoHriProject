; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-srv)


;//! \htmlinclude WriteData-request.msg.html

(cl:defclass <WriteData-request> (roslisp-msg-protocol:ros-message)
  ((perception_name
    :reader perception_name
    :initarg :perception_name
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (by
    :reader by
    :initarg :by
    :type cl:string
    :initform ""))
)

(cl:defclass WriteData-request (<WriteData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<WriteData-request> is deprecated: use mhri_msgs-srv:WriteData-request instead.")))

(cl:ensure-generic-function 'perception_name-val :lambda-list '(m))
(cl:defmethod perception_name-val ((m <WriteData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:perception_name-val is deprecated.  Use mhri_msgs-srv:perception_name instead.")
  (perception_name m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <WriteData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:data-val is deprecated.  Use mhri_msgs-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'by-val :lambda-list '(m))
(cl:defmethod by-val ((m <WriteData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:by-val is deprecated.  Use mhri_msgs-srv:by instead.")
  (by m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteData-request>) ostream)
  "Serializes a message object of type '<WriteData-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'by))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'by))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteData-request>) istream)
  "Deserializes a message object of type '<WriteData-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'by) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'by) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteData-request>)))
  "Returns string type for a service object of type '<WriteData-request>"
  "mhri_msgs/WriteDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteData-request)))
  "Returns string type for a service object of type 'WriteData-request"
  "mhri_msgs/WriteDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteData-request>)))
  "Returns md5sum for a message object of type '<WriteData-request>"
  "4296fcf55efa7b57ddad66edc397b06f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteData-request)))
  "Returns md5sum for a message object of type 'WriteData-request"
  "4296fcf55efa7b57ddad66edc397b06f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteData-request>)))
  "Returns full string definition for message of type '<WriteData-request>"
  (cl:format cl:nil "string perception_name~%string data~%string by~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteData-request)))
  "Returns full string definition for message of type 'WriteData-request"
  (cl:format cl:nil "string perception_name~%string data~%string by~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'perception_name))
     4 (cl:length (cl:slot-value msg 'data))
     4 (cl:length (cl:slot-value msg 'by))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteData-request
    (cl:cons ':perception_name (perception_name msg))
    (cl:cons ':data (data msg))
    (cl:cons ':by (by msg))
))
;//! \htmlinclude WriteData-response.msg.html

(cl:defclass <WriteData-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WriteData-response (<WriteData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-srv:<WriteData-response> is deprecated: use mhri_msgs-srv:WriteData-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WriteData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-srv:result-val is deprecated.  Use mhri_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteData-response>) ostream)
  "Serializes a message object of type '<WriteData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteData-response>) istream)
  "Deserializes a message object of type '<WriteData-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteData-response>)))
  "Returns string type for a service object of type '<WriteData-response>"
  "mhri_msgs/WriteDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteData-response)))
  "Returns string type for a service object of type 'WriteData-response"
  "mhri_msgs/WriteDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteData-response>)))
  "Returns md5sum for a message object of type '<WriteData-response>"
  "4296fcf55efa7b57ddad66edc397b06f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteData-response)))
  "Returns md5sum for a message object of type 'WriteData-response"
  "4296fcf55efa7b57ddad66edc397b06f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteData-response>)))
  "Returns full string definition for message of type '<WriteData-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteData-response)))
  "Returns full string definition for message of type 'WriteData-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteData-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteData)))
  'WriteData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteData)))
  'WriteData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteData)))
  "Returns string type for a service object of type '<WriteData>"
  "mhri_msgs/WriteData")