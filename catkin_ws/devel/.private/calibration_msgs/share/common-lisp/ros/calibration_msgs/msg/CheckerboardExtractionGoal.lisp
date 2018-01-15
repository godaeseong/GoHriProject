; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude CheckerboardExtractionGoal.msg.html

(cl:defclass <CheckerboardExtractionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (checkerboard
    :reader checkerboard
    :initarg :checkerboard
    :type calibration_msgs-msg:Checkerboard
    :initform (cl:make-instance 'calibration_msgs-msg:Checkerboard))
   (extract_from
    :reader extract_from
    :initarg :extract_from
    :type cl:fixnum
    :initform 0)
   (max_depth_points
    :reader max_depth_points
    :initarg :max_depth_points
    :type cl:integer
    :initform 0))
)

(cl:defclass CheckerboardExtractionGoal (<CheckerboardExtractionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckerboardExtractionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckerboardExtractionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<CheckerboardExtractionGoal> is deprecated: use calibration_msgs-msg:CheckerboardExtractionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CheckerboardExtractionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:header-val is deprecated.  Use calibration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'checkerboard-val :lambda-list '(m))
(cl:defmethod checkerboard-val ((m <CheckerboardExtractionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:checkerboard-val is deprecated.  Use calibration_msgs-msg:checkerboard instead.")
  (checkerboard m))

(cl:ensure-generic-function 'extract_from-val :lambda-list '(m))
(cl:defmethod extract_from-val ((m <CheckerboardExtractionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:extract_from-val is deprecated.  Use calibration_msgs-msg:extract_from instead.")
  (extract_from m))

(cl:ensure-generic-function 'max_depth_points-val :lambda-list '(m))
(cl:defmethod max_depth_points-val ((m <CheckerboardExtractionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:max_depth_points-val is deprecated.  Use calibration_msgs-msg:max_depth_points instead.")
  (max_depth_points m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CheckerboardExtractionGoal>)))
    "Constants for message type '<CheckerboardExtractionGoal>"
  '((:EXTRACT_FROM_NONE . 0)
    (:EXTRACT_FROM_IMAGE . 1)
    (:EXTRACT_FROM_DEPTH . 2)
    (:EXTRACT_FROM_ALL . 3)
    (:ALL_POINTS . -1)
    (:PLANE_ONLY . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CheckerboardExtractionGoal)))
    "Constants for message type 'CheckerboardExtractionGoal"
  '((:EXTRACT_FROM_NONE . 0)
    (:EXTRACT_FROM_IMAGE . 1)
    (:EXTRACT_FROM_DEPTH . 2)
    (:EXTRACT_FROM_ALL . 3)
    (:ALL_POINTS . -1)
    (:PLANE_ONLY . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckerboardExtractionGoal>) ostream)
  "Serializes a message object of type '<CheckerboardExtractionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'checkerboard) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extract_from)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'max_depth_points)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckerboardExtractionGoal>) istream)
  "Deserializes a message object of type '<CheckerboardExtractionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'checkerboard) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extract_from)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_depth_points) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckerboardExtractionGoal>)))
  "Returns string type for a message object of type '<CheckerboardExtractionGoal>"
  "calibration_msgs/CheckerboardExtractionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckerboardExtractionGoal)))
  "Returns string type for a message object of type 'CheckerboardExtractionGoal"
  "calibration_msgs/CheckerboardExtractionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckerboardExtractionGoal>)))
  "Returns md5sum for a message object of type '<CheckerboardExtractionGoal>"
  "6755a0628825fba080d03429f57f9f9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckerboardExtractionGoal)))
  "Returns md5sum for a message object of type 'CheckerboardExtractionGoal"
  "6755a0628825fba080d03429f57f9f9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckerboardExtractionGoal>)))
  "Returns full string definition for message of type '<CheckerboardExtractionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%~%uint8 EXTRACT_FROM_NONE=0~%uint8 EXTRACT_FROM_IMAGE=1~%uint8 EXTRACT_FROM_DEPTH=2~%uint8 EXTRACT_FROM_ALL=3~%~%int32 ALL_POINTS=-1~%int32 PLANE_ONLY=0~%~%Header header~%~%Checkerboard checkerboard~%uint8 extract_from~%int32 max_depth_points~%~%# max_depth_points must be in the interval [3, +inf[~%# or be one of the special values ALL_POINTS, PLANE_ONLY~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: calibration_msgs/Checkerboard~%Header header~%~%string parent_frame_id~%geometry_msgs/Pose pose~%~%uint32 rows~%uint32 cols~%float32 cell_width~%float32 cell_height~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckerboardExtractionGoal)))
  "Returns full string definition for message of type 'CheckerboardExtractionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%~%uint8 EXTRACT_FROM_NONE=0~%uint8 EXTRACT_FROM_IMAGE=1~%uint8 EXTRACT_FROM_DEPTH=2~%uint8 EXTRACT_FROM_ALL=3~%~%int32 ALL_POINTS=-1~%int32 PLANE_ONLY=0~%~%Header header~%~%Checkerboard checkerboard~%uint8 extract_from~%int32 max_depth_points~%~%# max_depth_points must be in the interval [3, +inf[~%# or be one of the special values ALL_POINTS, PLANE_ONLY~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: calibration_msgs/Checkerboard~%Header header~%~%string parent_frame_id~%geometry_msgs/Pose pose~%~%uint32 rows~%uint32 cols~%float32 cell_width~%float32 cell_height~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckerboardExtractionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'checkerboard))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckerboardExtractionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckerboardExtractionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':checkerboard (checkerboard msg))
    (cl:cons ':extract_from (extract_from msg))
    (cl:cons ':max_depth_points (max_depth_points msg))
))
