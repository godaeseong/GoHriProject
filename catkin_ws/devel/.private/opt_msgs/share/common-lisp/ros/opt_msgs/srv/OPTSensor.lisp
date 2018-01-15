; Auto-generated. Do not edit!


(cl:in-package opt_msgs-srv)


;//! \htmlinclude OPTSensor-request.msg.html

(cl:defclass <OPTSensor-request> (roslisp-msg-protocol:ros-message)
  ((session_id
    :reader session_id
    :initarg :session_id
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (serial
    :reader serial
    :initarg :serial
    :type cl:string
    :initform "")
   (ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (serial_left
    :reader serial_left
    :initarg :serial_left
    :type cl:string
    :initform "")
   (serial_right
    :reader serial_right
    :initarg :serial_right
    :type cl:string
    :initform ""))
)

(cl:defclass OPTSensor-request (<OPTSensor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OPTSensor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OPTSensor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-srv:<OPTSensor-request> is deprecated: use opt_msgs-srv:OPTSensor-request instead.")))

(cl:ensure-generic-function 'session_id-val :lambda-list '(m))
(cl:defmethod session_id-val ((m <OPTSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:session_id-val is deprecated.  Use opt_msgs-srv:session_id instead.")
  (session_id m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <OPTSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:id-val is deprecated.  Use opt_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <OPTSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:type-val is deprecated.  Use opt_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'serial-val :lambda-list '(m))
(cl:defmethod serial-val ((m <OPTSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:serial-val is deprecated.  Use opt_msgs-srv:serial instead.")
  (serial m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <OPTSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:ip-val is deprecated.  Use opt_msgs-srv:ip instead.")
  (ip m))

(cl:ensure-generic-function 'serial_left-val :lambda-list '(m))
(cl:defmethod serial_left-val ((m <OPTSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:serial_left-val is deprecated.  Use opt_msgs-srv:serial_left instead.")
  (serial_left m))

(cl:ensure-generic-function 'serial_right-val :lambda-list '(m))
(cl:defmethod serial_right-val ((m <OPTSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:serial_right-val is deprecated.  Use opt_msgs-srv:serial_right instead.")
  (serial_right m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OPTSensor-request>)))
    "Constants for message type '<OPTSensor-request>"
  '((:TYPE_NOT_SET . 0)
    (:TYPE_KINECT1 . 1)
    (:TYPE_SR4500 . 2)
    (:TYPE_STEREO_PG . 3)
    (:TYPE_KINECT2 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OPTSensor-request)))
    "Constants for message type 'OPTSensor-request"
  '((:TYPE_NOT_SET . 0)
    (:TYPE_KINECT1 . 1)
    (:TYPE_SR4500 . 2)
    (:TYPE_STEREO_PG . 3)
    (:TYPE_KINECT2 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OPTSensor-request>) ostream)
  "Serializes a message object of type '<OPTSensor-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'session_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_left))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_right))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OPTSensor-request>) istream)
  "Deserializes a message object of type '<OPTSensor-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_left) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_left) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_right) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_right) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OPTSensor-request>)))
  "Returns string type for a service object of type '<OPTSensor-request>"
  "opt_msgs/OPTSensorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OPTSensor-request)))
  "Returns string type for a service object of type 'OPTSensor-request"
  "opt_msgs/OPTSensorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OPTSensor-request>)))
  "Returns md5sum for a message object of type '<OPTSensor-request>"
  "e973e0250323fe20e965914453fb0ff5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OPTSensor-request)))
  "Returns md5sum for a message object of type 'OPTSensor-request"
  "e973e0250323fe20e965914453fb0ff5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OPTSensor-request>)))
  "Returns full string definition for message of type '<OPTSensor-request>"
  (cl:format cl:nil "uint8 TYPE_NOT_SET=0~%uint8 TYPE_KINECT1=1~%uint8 TYPE_SR4500=2~%uint8 TYPE_STEREO_PG=3~%uint8 TYPE_KINECT2=4~%~%uint64 session_id~%~%string id~%uint8  type~%~%~%string serial~%~%~%string ip~%~%~%string serial_left~%string serial_right~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OPTSensor-request)))
  "Returns full string definition for message of type 'OPTSensor-request"
  (cl:format cl:nil "uint8 TYPE_NOT_SET=0~%uint8 TYPE_KINECT1=1~%uint8 TYPE_SR4500=2~%uint8 TYPE_STEREO_PG=3~%uint8 TYPE_KINECT2=4~%~%uint64 session_id~%~%string id~%uint8  type~%~%~%string serial~%~%~%string ip~%~%~%string serial_left~%string serial_right~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OPTSensor-request>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'id))
     1
     4 (cl:length (cl:slot-value msg 'serial))
     4 (cl:length (cl:slot-value msg 'ip))
     4 (cl:length (cl:slot-value msg 'serial_left))
     4 (cl:length (cl:slot-value msg 'serial_right))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OPTSensor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OPTSensor-request
    (cl:cons ':session_id (session_id msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':serial (serial msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':serial_left (serial_left msg))
    (cl:cons ':serial_right (serial_right msg))
))
;//! \htmlinclude OPTSensor-response.msg.html

(cl:defclass <OPTSensor-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass OPTSensor-response (<OPTSensor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OPTSensor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OPTSensor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-srv:<OPTSensor-response> is deprecated: use opt_msgs-srv:OPTSensor-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <OPTSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:status-val is deprecated.  Use opt_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <OPTSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:message-val is deprecated.  Use opt_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OPTSensor-response>)))
    "Constants for message type '<OPTSensor-response>"
  '((:STATUS_OK . 0)
    (:STATUS_ERROR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OPTSensor-response)))
    "Constants for message type 'OPTSensor-response"
  '((:STATUS_OK . 0)
    (:STATUS_ERROR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OPTSensor-response>) ostream)
  "Serializes a message object of type '<OPTSensor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OPTSensor-response>) istream)
  "Deserializes a message object of type '<OPTSensor-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OPTSensor-response>)))
  "Returns string type for a service object of type '<OPTSensor-response>"
  "opt_msgs/OPTSensorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OPTSensor-response)))
  "Returns string type for a service object of type 'OPTSensor-response"
  "opt_msgs/OPTSensorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OPTSensor-response>)))
  "Returns md5sum for a message object of type '<OPTSensor-response>"
  "e973e0250323fe20e965914453fb0ff5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OPTSensor-response)))
  "Returns md5sum for a message object of type 'OPTSensor-response"
  "e973e0250323fe20e965914453fb0ff5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OPTSensor-response>)))
  "Returns full string definition for message of type '<OPTSensor-response>"
  (cl:format cl:nil "~%uint8 STATUS_OK=0~%uint8 STATUS_ERROR=1~%~%uint8  status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OPTSensor-response)))
  "Returns full string definition for message of type 'OPTSensor-response"
  (cl:format cl:nil "~%uint8 STATUS_OK=0~%uint8 STATUS_ERROR=1~%~%uint8  status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OPTSensor-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OPTSensor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OPTSensor-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OPTSensor)))
  'OPTSensor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OPTSensor)))
  'OPTSensor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OPTSensor)))
  "Returns string type for a service object of type '<OPTSensor>"
  "opt_msgs/OPTSensor")