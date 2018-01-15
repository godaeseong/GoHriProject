; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-msg)


;//! \htmlinclude WaitEventResult.msg.html

(cl:defclass <WaitEventResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform "")
   (query_result
    :reader query_result
    :initarg :query_result
    :type cl:string
    :initform ""))
)

(cl:defclass WaitEventResult (<WaitEventResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaitEventResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaitEventResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-msg:<WaitEventResult> is deprecated: use mhri_msgs-msg:WaitEventResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WaitEventResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:result-val is deprecated.  Use mhri_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <WaitEventResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:error_msg-val is deprecated.  Use mhri_msgs-msg:error_msg instead.")
  (error_msg m))

(cl:ensure-generic-function 'query_result-val :lambda-list '(m))
(cl:defmethod query_result-val ((m <WaitEventResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:query_result-val is deprecated.  Use mhri_msgs-msg:query_result instead.")
  (query_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaitEventResult>) ostream)
  "Serializes a message object of type '<WaitEventResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query_result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaitEventResult>) istream)
  "Deserializes a message object of type '<WaitEventResult>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query_result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query_result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaitEventResult>)))
  "Returns string type for a message object of type '<WaitEventResult>"
  "mhri_msgs/WaitEventResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaitEventResult)))
  "Returns string type for a message object of type 'WaitEventResult"
  "mhri_msgs/WaitEventResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaitEventResult>)))
  "Returns md5sum for a message object of type '<WaitEventResult>"
  "f2af3652fc273d2d3c596da8d4359d3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaitEventResult)))
  "Returns md5sum for a message object of type 'WaitEventResult"
  "f2af3652fc273d2d3c596da8d4359d3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaitEventResult>)))
  "Returns full string definition for message of type '<WaitEventResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define Result~%bool result~%string error_msg~%string query_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaitEventResult)))
  "Returns full string definition for message of type 'WaitEventResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define Result~%bool result~%string error_msg~%string query_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaitEventResult>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_msg))
     4 (cl:length (cl:slot-value msg 'query_result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaitEventResult>))
  "Converts a ROS message object to a list"
  (cl:list 'WaitEventResult
    (cl:cons ':result (result msg))
    (cl:cons ':error_msg (error_msg msg))
    (cl:cons ':query_result (query_result msg))
))
