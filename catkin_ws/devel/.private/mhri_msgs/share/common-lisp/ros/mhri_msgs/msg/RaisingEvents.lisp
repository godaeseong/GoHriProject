; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-msg)


;//! \htmlinclude RaisingEvents.msg.html

(cl:defclass <RaisingEvents> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (recognized_word
    :reader recognized_word
    :initarg :recognized_word
    :type cl:string
    :initform "")
   (events
    :reader events
    :initarg :events
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RaisingEvents (<RaisingEvents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RaisingEvents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RaisingEvents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-msg:<RaisingEvents> is deprecated: use mhri_msgs-msg:RaisingEvents instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RaisingEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:header-val is deprecated.  Use mhri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'recognized_word-val :lambda-list '(m))
(cl:defmethod recognized_word-val ((m <RaisingEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:recognized_word-val is deprecated.  Use mhri_msgs-msg:recognized_word instead.")
  (recognized_word m))

(cl:ensure-generic-function 'events-val :lambda-list '(m))
(cl:defmethod events-val ((m <RaisingEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:events-val is deprecated.  Use mhri_msgs-msg:events instead.")
  (events m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RaisingEvents>) ostream)
  "Serializes a message object of type '<RaisingEvents>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'recognized_word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'recognized_word))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'events))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'events))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RaisingEvents>) istream)
  "Deserializes a message object of type '<RaisingEvents>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recognized_word) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'recognized_word) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'events) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'events)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RaisingEvents>)))
  "Returns string type for a message object of type '<RaisingEvents>"
  "mhri_msgs/RaisingEvents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RaisingEvents)))
  "Returns string type for a message object of type 'RaisingEvents"
  "mhri_msgs/RaisingEvents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RaisingEvents>)))
  "Returns md5sum for a message object of type '<RaisingEvents>"
  "21294b98115b190cccece43cfee200e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RaisingEvents)))
  "Returns md5sum for a message object of type 'RaisingEvents"
  "21294b98115b190cccece43cfee200e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RaisingEvents>)))
  "Returns full string definition for message of type '<RaisingEvents>"
  (cl:format cl:nil "Header header~%string recognized_word~%string[] events~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RaisingEvents)))
  "Returns full string definition for message of type 'RaisingEvents"
  (cl:format cl:nil "Header header~%string recognized_word~%string[] events~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RaisingEvents>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'recognized_word))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'events) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RaisingEvents>))
  "Converts a ROS message object to a list"
  (cl:list 'RaisingEvents
    (cl:cons ':header (header msg))
    (cl:cons ':recognized_word (recognized_word msg))
    (cl:cons ':events (events msg))
))
