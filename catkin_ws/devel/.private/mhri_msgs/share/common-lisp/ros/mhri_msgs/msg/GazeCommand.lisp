; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-msg)


;//! \htmlinclude GazeCommand.msg.html

(cl:defclass <GazeCommand> (roslisp-msg-protocol:ros-message)
  ((target_point
    :reader target_point
    :initarg :target_point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass GazeCommand (<GazeCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-msg:<GazeCommand> is deprecated: use mhri_msgs-msg:GazeCommand instead.")))

(cl:ensure-generic-function 'target_point-val :lambda-list '(m))
(cl:defmethod target_point-val ((m <GazeCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:target_point-val is deprecated.  Use mhri_msgs-msg:target_point instead.")
  (target_point m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <GazeCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:max_speed-val is deprecated.  Use mhri_msgs-msg:max_speed instead.")
  (max_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeCommand>) ostream)
  "Serializes a message object of type '<GazeCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeCommand>) istream)
  "Deserializes a message object of type '<GazeCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeCommand>)))
  "Returns string type for a message object of type '<GazeCommand>"
  "mhri_msgs/GazeCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeCommand)))
  "Returns string type for a message object of type 'GazeCommand"
  "mhri_msgs/GazeCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeCommand>)))
  "Returns md5sum for a message object of type '<GazeCommand>"
  "6b9eaeb25ff2a12d04fe425e3000dee3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeCommand)))
  "Returns md5sum for a message object of type 'GazeCommand"
  "6b9eaeb25ff2a12d04fe425e3000dee3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeCommand>)))
  "Returns full string definition for message of type '<GazeCommand>"
  (cl:format cl:nil "geometry_msgs/PointStamped target_point~%float32 max_speed~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeCommand)))
  "Returns full string definition for message of type 'GazeCommand"
  (cl:format cl:nil "geometry_msgs/PointStamped target_point~%float32 max_speed~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_point))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeCommand
    (cl:cons ':target_point (target_point msg))
    (cl:cons ':max_speed (max_speed msg))
))
