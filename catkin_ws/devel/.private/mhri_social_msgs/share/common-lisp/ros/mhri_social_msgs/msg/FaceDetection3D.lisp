; Auto-generated. Do not edit!


(cl:in-package mhri_social_msgs-msg)


;//! \htmlinclude FaceDetection3D.msg.html

(cl:defclass <FaceDetection3D> (roslisp-msg-protocol:ros-message)
  ((num_of_detected
    :reader num_of_detected
    :initarg :num_of_detected
    :type cl:integer
    :initform 0)
   (faces_pose
    :reader faces_pose
    :initarg :faces_pose
    :type (cl:vector geometry_msgs-msg:PointStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PointStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PointStamped)))
   (faces_image
    :reader faces_image
    :initarg :faces_image
    :type (cl:vector sensor_msgs-msg:Image)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:Image :initial-element (cl:make-instance 'sensor_msgs-msg:Image))))
)

(cl:defclass FaceDetection3D (<FaceDetection3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetection3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetection3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_social_msgs-msg:<FaceDetection3D> is deprecated: use mhri_social_msgs-msg:FaceDetection3D instead.")))

(cl:ensure-generic-function 'num_of_detected-val :lambda-list '(m))
(cl:defmethod num_of_detected-val ((m <FaceDetection3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_social_msgs-msg:num_of_detected-val is deprecated.  Use mhri_social_msgs-msg:num_of_detected instead.")
  (num_of_detected m))

(cl:ensure-generic-function 'faces_pose-val :lambda-list '(m))
(cl:defmethod faces_pose-val ((m <FaceDetection3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_social_msgs-msg:faces_pose-val is deprecated.  Use mhri_social_msgs-msg:faces_pose instead.")
  (faces_pose m))

(cl:ensure-generic-function 'faces_image-val :lambda-list '(m))
(cl:defmethod faces_image-val ((m <FaceDetection3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_social_msgs-msg:faces_image-val is deprecated.  Use mhri_social_msgs-msg:faces_image instead.")
  (faces_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetection3D>) ostream)
  "Serializes a message object of type '<FaceDetection3D>"
  (cl:let* ((signed (cl:slot-value msg 'num_of_detected)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'faces_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'faces_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'faces_image))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'faces_image))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetection3D>) istream)
  "Deserializes a message object of type '<FaceDetection3D>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_detected) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'faces_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'faces_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PointStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'faces_image) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'faces_image)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:Image))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetection3D>)))
  "Returns string type for a message object of type '<FaceDetection3D>"
  "mhri_social_msgs/FaceDetection3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetection3D)))
  "Returns string type for a message object of type 'FaceDetection3D"
  "mhri_social_msgs/FaceDetection3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetection3D>)))
  "Returns md5sum for a message object of type '<FaceDetection3D>"
  "038b473215491c8276c651727ebdf695")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetection3D)))
  "Returns md5sum for a message object of type 'FaceDetection3D"
  "038b473215491c8276c651727ebdf695")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetection3D>)))
  "Returns full string definition for message of type '<FaceDetection3D>"
  (cl:format cl:nil "int32 num_of_detected~%geometry_msgs/PointStamped[] faces_pose~%sensor_msgs/Image[] faces_image~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetection3D)))
  "Returns full string definition for message of type 'FaceDetection3D"
  (cl:format cl:nil "int32 num_of_detected~%geometry_msgs/PointStamped[] faces_pose~%sensor_msgs/Image[] faces_image~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetection3D>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'faces_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'faces_image) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetection3D>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetection3D
    (cl:cons ':num_of_detected (num_of_detected msg))
    (cl:cons ':faces_pose (faces_pose msg))
    (cl:cons ':faces_image (faces_image msg))
))
