; Auto-generated. Do not edit!


(cl:in-package opt_msgs-msg)


;//! \htmlinclude Rois.msg.html

(cl:defclass <Rois> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rois
    :reader rois
    :initarg :rois
    :type (cl:vector opt_msgs-msg:RoiRect)
   :initform (cl:make-array 0 :element-type 'opt_msgs-msg:RoiRect :initial-element (cl:make-instance 'opt_msgs-msg:RoiRect))))
)

(cl:defclass Rois (<Rois>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rois>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rois)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-msg:<Rois> is deprecated: use opt_msgs-msg:Rois instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Rois>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:header-val is deprecated.  Use opt_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rois-val :lambda-list '(m))
(cl:defmethod rois-val ((m <Rois>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:rois-val is deprecated.  Use opt_msgs-msg:rois instead.")
  (rois m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rois>) ostream)
  "Serializes a message object of type '<Rois>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rois))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rois))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rois>) istream)
  "Deserializes a message object of type '<Rois>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rois) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rois)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'opt_msgs-msg:RoiRect))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rois>)))
  "Returns string type for a message object of type '<Rois>"
  "opt_msgs/Rois")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rois)))
  "Returns string type for a message object of type 'Rois"
  "opt_msgs/Rois")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rois>)))
  "Returns md5sum for a message object of type '<Rois>"
  "d62832a3756bef758b493384cfce0655")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rois)))
  "Returns md5sum for a message object of type 'Rois"
  "d62832a3756bef758b493384cfce0655")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rois>)))
  "Returns full string definition for message of type '<Rois>"
  (cl:format cl:nil "Header header~%RoiRect[] rois~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opt_msgs/RoiRect~%int32 x~%int32 y~%int32 width~%int32 height~%int32 label ~%float64 confidence ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rois)))
  "Returns full string definition for message of type 'Rois"
  (cl:format cl:nil "Header header~%RoiRect[] rois~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opt_msgs/RoiRect~%int32 x~%int32 y~%int32 width~%int32 height~%int32 label ~%float64 confidence ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rois>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rois) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rois>))
  "Converts a ROS message object to a list"
  (cl:list 'Rois
    (cl:cons ':header (header msg))
    (cl:cons ':rois (rois msg))
))
