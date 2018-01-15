; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-msg)


;//! \htmlinclude ScriptStatus.msg.html

(cl:defclass <ScriptStatus> (roslisp-msg-protocol:ros-message)
  ((last_match
    :reader last_match
    :initarg :last_match
    :type cl:string
    :initform "")
   (current_topic
    :reader current_topic
    :initarg :current_topic
    :type cl:string
    :initform "")
   (topic_structure
    :reader topic_structure
    :initarg :topic_structure
    :type cl:string
    :initform "")
   (user_vars
    :reader user_vars
    :initarg :user_vars
    :type cl:string
    :initform ""))
)

(cl:defclass ScriptStatus (<ScriptStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScriptStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScriptStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-msg:<ScriptStatus> is deprecated: use mhri_msgs-msg:ScriptStatus instead.")))

(cl:ensure-generic-function 'last_match-val :lambda-list '(m))
(cl:defmethod last_match-val ((m <ScriptStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:last_match-val is deprecated.  Use mhri_msgs-msg:last_match instead.")
  (last_match m))

(cl:ensure-generic-function 'current_topic-val :lambda-list '(m))
(cl:defmethod current_topic-val ((m <ScriptStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:current_topic-val is deprecated.  Use mhri_msgs-msg:current_topic instead.")
  (current_topic m))

(cl:ensure-generic-function 'topic_structure-val :lambda-list '(m))
(cl:defmethod topic_structure-val ((m <ScriptStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:topic_structure-val is deprecated.  Use mhri_msgs-msg:topic_structure instead.")
  (topic_structure m))

(cl:ensure-generic-function 'user_vars-val :lambda-list '(m))
(cl:defmethod user_vars-val ((m <ScriptStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:user_vars-val is deprecated.  Use mhri_msgs-msg:user_vars instead.")
  (user_vars m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScriptStatus>) ostream)
  "Serializes a message object of type '<ScriptStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_match))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_match))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_structure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_structure))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_vars))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_vars))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScriptStatus>) istream)
  "Deserializes a message object of type '<ScriptStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_match) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_match) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_structure) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_structure) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_vars) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_vars) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScriptStatus>)))
  "Returns string type for a message object of type '<ScriptStatus>"
  "mhri_msgs/ScriptStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScriptStatus)))
  "Returns string type for a message object of type 'ScriptStatus"
  "mhri_msgs/ScriptStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScriptStatus>)))
  "Returns md5sum for a message object of type '<ScriptStatus>"
  "07603c38a67cb1e997f0292a756e0758")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScriptStatus)))
  "Returns md5sum for a message object of type 'ScriptStatus"
  "07603c38a67cb1e997f0292a756e0758")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScriptStatus>)))
  "Returns full string definition for message of type '<ScriptStatus>"
  (cl:format cl:nil "string last_match~%string current_topic~%string topic_structure~%string user_vars~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScriptStatus)))
  "Returns full string definition for message of type 'ScriptStatus"
  (cl:format cl:nil "string last_match~%string current_topic~%string topic_structure~%string user_vars~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScriptStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'last_match))
     4 (cl:length (cl:slot-value msg 'current_topic))
     4 (cl:length (cl:slot-value msg 'topic_structure))
     4 (cl:length (cl:slot-value msg 'user_vars))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScriptStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ScriptStatus
    (cl:cons ':last_match (last_match msg))
    (cl:cons ':current_topic (current_topic msg))
    (cl:cons ':topic_structure (topic_structure msg))
    (cl:cons ':user_vars (user_vars msg))
))
