; Auto-generated. Do not edit!


(cl:in-package opt_msgs-msg)


;//! \htmlinclude HumanEntries.msg.html

(cl:defclass <HumanEntries> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (entries
    :reader entries
    :initarg :entries
    :type (cl:vector opt_msgs-msg:HumanEntry)
   :initform (cl:make-array 0 :element-type 'opt_msgs-msg:HumanEntry :initial-element (cl:make-instance 'opt_msgs-msg:HumanEntry))))
)

(cl:defclass HumanEntries (<HumanEntries>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanEntries>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanEntries)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-msg:<HumanEntries> is deprecated: use opt_msgs-msg:HumanEntries instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HumanEntries>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:header-val is deprecated.  Use opt_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'entries-val :lambda-list '(m))
(cl:defmethod entries-val ((m <HumanEntries>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:entries-val is deprecated.  Use opt_msgs-msg:entries instead.")
  (entries m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanEntries>) ostream)
  "Serializes a message object of type '<HumanEntries>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'entries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'entries))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanEntries>) istream)
  "Deserializes a message object of type '<HumanEntries>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'entries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'entries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'opt_msgs-msg:HumanEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanEntries>)))
  "Returns string type for a message object of type '<HumanEntries>"
  "opt_msgs/HumanEntries")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanEntries)))
  "Returns string type for a message object of type 'HumanEntries"
  "opt_msgs/HumanEntries")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanEntries>)))
  "Returns md5sum for a message object of type '<HumanEntries>"
  "2a8c1a02f72face88523f0a8e72a9f6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanEntries)))
  "Returns md5sum for a message object of type 'HumanEntries"
  "2a8c1a02f72face88523f0a8e72a9f6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanEntries>)))
  "Returns full string definition for message of type '<HumanEntries>"
  (cl:format cl:nil "Header header~%HumanEntry[] entries~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opt_msgs/HumanEntry~%time stamp~%uint64 personID~%float64 personCentroidX~%float64 personCentroidY~%float64 personCentroidZ~%float64 personBoundingBoxTopCenterX~%float64 personBoundingBoxTopCenterY~%float64 personBoundingBoxTopCenterZ~%float64 Xvelocity~%float64 Yvelocity~%float64 Zvelocity~%float64 ROIwidth~%float64 ROIheight~%float64 Xsigma~%float64 Ysigma~%float64 Zsigma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanEntries)))
  "Returns full string definition for message of type 'HumanEntries"
  (cl:format cl:nil "Header header~%HumanEntry[] entries~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opt_msgs/HumanEntry~%time stamp~%uint64 personID~%float64 personCentroidX~%float64 personCentroidY~%float64 personCentroidZ~%float64 personBoundingBoxTopCenterX~%float64 personBoundingBoxTopCenterY~%float64 personBoundingBoxTopCenterZ~%float64 Xvelocity~%float64 Yvelocity~%float64 Zvelocity~%float64 ROIwidth~%float64 ROIheight~%float64 Xsigma~%float64 Ysigma~%float64 Zsigma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanEntries>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'entries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanEntries>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanEntries
    (cl:cons ':header (header msg))
    (cl:cons ':entries (entries msg))
))
