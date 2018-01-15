; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude CheckerboardExtractionResult.msg.html

(cl:defclass <CheckerboardExtractionResult> (roslisp-msg-protocol:ros-message)
  ((image_corners
    :reader image_corners
    :initarg :image_corners
    :type (cl:vector calibration_msgs-msg:Point2DArray)
   :initform (cl:make-array 0 :element-type 'calibration_msgs-msg:Point2DArray :initial-element (cl:make-instance 'calibration_msgs-msg:Point2DArray)))
   (depth_points
    :reader depth_points
    :initarg :depth_points
    :type (cl:vector calibration_msgs-msg:PointArray)
   :initform (cl:make-array 0 :element-type 'calibration_msgs-msg:PointArray :initial-element (cl:make-instance 'calibration_msgs-msg:PointArray))))
)

(cl:defclass CheckerboardExtractionResult (<CheckerboardExtractionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckerboardExtractionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckerboardExtractionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<CheckerboardExtractionResult> is deprecated: use calibration_msgs-msg:CheckerboardExtractionResult instead.")))

(cl:ensure-generic-function 'image_corners-val :lambda-list '(m))
(cl:defmethod image_corners-val ((m <CheckerboardExtractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:image_corners-val is deprecated.  Use calibration_msgs-msg:image_corners instead.")
  (image_corners m))

(cl:ensure-generic-function 'depth_points-val :lambda-list '(m))
(cl:defmethod depth_points-val ((m <CheckerboardExtractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:depth_points-val is deprecated.  Use calibration_msgs-msg:depth_points instead.")
  (depth_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckerboardExtractionResult>) ostream)
  "Serializes a message object of type '<CheckerboardExtractionResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_corners))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'depth_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'depth_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckerboardExtractionResult>) istream)
  "Deserializes a message object of type '<CheckerboardExtractionResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_corners) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_corners)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calibration_msgs-msg:Point2DArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'depth_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'depth_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calibration_msgs-msg:PointArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckerboardExtractionResult>)))
  "Returns string type for a message object of type '<CheckerboardExtractionResult>"
  "calibration_msgs/CheckerboardExtractionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckerboardExtractionResult)))
  "Returns string type for a message object of type 'CheckerboardExtractionResult"
  "calibration_msgs/CheckerboardExtractionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckerboardExtractionResult>)))
  "Returns md5sum for a message object of type '<CheckerboardExtractionResult>"
  "b4a5b4669e26c3906fa9dff20cf24410")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckerboardExtractionResult)))
  "Returns md5sum for a message object of type 'CheckerboardExtractionResult"
  "b4a5b4669e26c3906fa9dff20cf24410")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckerboardExtractionResult>)))
  "Returns full string definition for message of type '<CheckerboardExtractionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#result~%~%calibration_msgs/Point2DArray[] image_corners~%calibration_msgs/PointArray[]   depth_points~%~%# If depth_points[i] size is 2:~%#  - depth_points[i][0] = point on the plane~%#  - depth_points[i][1] = plane normal~%~%~%================================================================================~%MSG: calibration_msgs/Point2DArray~%Header header~%~%uint32 x_size~%uint32 y_size~%calibration_msgs/Point2D[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: calibration_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: calibration_msgs/PointArray~%Header header~%~%uint32 x_size~%uint32 y_size~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckerboardExtractionResult)))
  "Returns full string definition for message of type 'CheckerboardExtractionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#result~%~%calibration_msgs/Point2DArray[] image_corners~%calibration_msgs/PointArray[]   depth_points~%~%# If depth_points[i] size is 2:~%#  - depth_points[i][0] = point on the plane~%#  - depth_points[i][1] = plane normal~%~%~%================================================================================~%MSG: calibration_msgs/Point2DArray~%Header header~%~%uint32 x_size~%uint32 y_size~%calibration_msgs/Point2D[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: calibration_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: calibration_msgs/PointArray~%Header header~%~%uint32 x_size~%uint32 y_size~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckerboardExtractionResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'depth_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckerboardExtractionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckerboardExtractionResult
    (cl:cons ':image_corners (image_corners msg))
    (cl:cons ':depth_points (depth_points msg))
))
