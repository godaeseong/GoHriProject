; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-msg)


;//! \htmlinclude RenderItemGoal.msg.html

(cl:defclass <RenderItemGoal> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass RenderItemGoal (<RenderItemGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenderItemGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenderItemGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-msg:<RenderItemGoal> is deprecated: use mhri_msgs-msg:RenderItemGoal instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RenderItemGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:name-val is deprecated.  Use mhri_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RenderItemGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:data-val is deprecated.  Use mhri_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenderItemGoal>) ostream)
  "Serializes a message object of type '<RenderItemGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenderItemGoal>) istream)
  "Deserializes a message object of type '<RenderItemGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenderItemGoal>)))
  "Returns string type for a message object of type '<RenderItemGoal>"
  "mhri_msgs/RenderItemGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenderItemGoal)))
  "Returns string type for a message object of type 'RenderItemGoal"
  "mhri_msgs/RenderItemGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenderItemGoal>)))
  "Returns md5sum for a message object of type '<RenderItemGoal>"
  "0a150dc399b6cef3706553ca3c336ddf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenderItemGoal)))
  "Returns md5sum for a message object of type 'RenderItemGoal"
  "0a150dc399b6cef3706553ca3c336ddf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenderItemGoal>)))
  "Returns full string definition for message of type '<RenderItemGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string name~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenderItemGoal)))
  "Returns full string definition for message of type 'RenderItemGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string name~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenderItemGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenderItemGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RenderItemGoal
    (cl:cons ':name (name msg))
    (cl:cons ':data (data msg))
))