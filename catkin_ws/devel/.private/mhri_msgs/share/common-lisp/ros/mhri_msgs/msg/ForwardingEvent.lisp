; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-msg)


;//! \htmlinclude ForwardingEvent.msg.html

(cl:defclass <ForwardingEvent> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (event
    :reader event
    :initarg :event
    :type cl:string
    :initform "")
   (by
    :reader by
    :initarg :by
    :type cl:string
    :initform ""))
)

(cl:defclass ForwardingEvent (<ForwardingEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForwardingEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForwardingEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-msg:<ForwardingEvent> is deprecated: use mhri_msgs-msg:ForwardingEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ForwardingEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:header-val is deprecated.  Use mhri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <ForwardingEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:event-val is deprecated.  Use mhri_msgs-msg:event instead.")
  (event m))

(cl:ensure-generic-function 'by-val :lambda-list '(m))
(cl:defmethod by-val ((m <ForwardingEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:by-val is deprecated.  Use mhri_msgs-msg:by instead.")
  (by m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForwardingEvent>) ostream)
  "Serializes a message object of type '<ForwardingEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'event))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'event))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'by))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'by))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForwardingEvent>) istream)
  "Deserializes a message object of type '<ForwardingEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'event) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForwardingEvent>)))
  "Returns string type for a message object of type '<ForwardingEvent>"
  "mhri_msgs/ForwardingEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardingEvent)))
  "Returns string type for a message object of type 'ForwardingEvent"
  "mhri_msgs/ForwardingEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForwardingEvent>)))
  "Returns md5sum for a message object of type '<ForwardingEvent>"
  "76aa3c5d305a1516168ca9a399afd13e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForwardingEvent)))
  "Returns md5sum for a message object of type 'ForwardingEvent"
  "76aa3c5d305a1516168ca9a399afd13e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForwardingEvent>)))
  "Returns full string definition for message of type '<ForwardingEvent>"
  (cl:format cl:nil "Header header~%string event~%string by~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForwardingEvent)))
  "Returns full string definition for message of type 'ForwardingEvent"
  (cl:format cl:nil "Header header~%string event~%string by~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForwardingEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'event))
     4 (cl:length (cl:slot-value msg 'by))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForwardingEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'ForwardingEvent
    (cl:cons ':header (header msg))
    (cl:cons ':event (event msg))
    (cl:cons ':by (by msg))
))
