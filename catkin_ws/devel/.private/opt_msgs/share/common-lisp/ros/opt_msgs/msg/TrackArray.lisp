; Auto-generated. Do not edit!


(cl:in-package opt_msgs-msg)


;//! \htmlinclude TrackArray.msg.html

(cl:defclass <TrackArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracks
    :reader tracks
    :initarg :tracks
    :type (cl:vector opt_msgs-msg:Track)
   :initform (cl:make-array 0 :element-type 'opt_msgs-msg:Track :initial-element (cl:make-instance 'opt_msgs-msg:Track))))
)

(cl:defclass TrackArray (<TrackArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-msg:<TrackArray> is deprecated: use opt_msgs-msg:TrackArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:header-val is deprecated.  Use opt_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracks-val :lambda-list '(m))
(cl:defmethod tracks-val ((m <TrackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:tracks-val is deprecated.  Use opt_msgs-msg:tracks instead.")
  (tracks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackArray>) ostream)
  "Serializes a message object of type '<TrackArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tracks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackArray>) istream)
  "Deserializes a message object of type '<TrackArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'opt_msgs-msg:Track))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackArray>)))
  "Returns string type for a message object of type '<TrackArray>"
  "opt_msgs/TrackArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackArray)))
  "Returns string type for a message object of type 'TrackArray"
  "opt_msgs/TrackArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackArray>)))
  "Returns md5sum for a message object of type '<TrackArray>"
  "4106b2da5c66b9f239aada7912e67b8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackArray)))
  "Returns md5sum for a message object of type 'TrackArray"
  "4106b2da5c66b9f239aada7912e67b8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackArray>)))
  "Returns full string definition for message of type '<TrackArray>"
  (cl:format cl:nil "Header header~%~%opt_msgs/Track[] tracks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opt_msgs/Track~%uint8 VISIBLE = 0~%uint8 OCCLUDED = 1~%uint8 NOT_VISIBLE = 2~%~%int32 id~%~%float64 x~%float64 y~%float64 height~%float64 distance~%float64 age~%float64 confidence~%~%uint8 visibility~%~%opt_msgs/BoundingBox2D box_2D~%~%~%================================================================================~%MSG: opt_msgs/BoundingBox2D~%int32 x~%int32 y~%int32 width~%int32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackArray)))
  "Returns full string definition for message of type 'TrackArray"
  (cl:format cl:nil "Header header~%~%opt_msgs/Track[] tracks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opt_msgs/Track~%uint8 VISIBLE = 0~%uint8 OCCLUDED = 1~%uint8 NOT_VISIBLE = 2~%~%int32 id~%~%float64 x~%float64 y~%float64 height~%float64 distance~%float64 age~%float64 confidence~%~%uint8 visibility~%~%opt_msgs/BoundingBox2D box_2D~%~%~%================================================================================~%MSG: opt_msgs/BoundingBox2D~%int32 x~%int32 y~%int32 width~%int32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackArray
    (cl:cons ':header (header msg))
    (cl:cons ':tracks (tracks msg))
))
