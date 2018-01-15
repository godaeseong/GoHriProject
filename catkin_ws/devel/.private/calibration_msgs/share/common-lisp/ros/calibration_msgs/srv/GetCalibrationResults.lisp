; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-srv)


;//! \htmlinclude GetCalibrationResults-request.msg.html

(cl:defclass <GetCalibrationResults-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCalibrationResults-request (<GetCalibrationResults-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCalibrationResults-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCalibrationResults-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-srv:<GetCalibrationResults-request> is deprecated: use calibration_msgs-srv:GetCalibrationResults-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCalibrationResults-request>) ostream)
  "Serializes a message object of type '<GetCalibrationResults-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCalibrationResults-request>) istream)
  "Deserializes a message object of type '<GetCalibrationResults-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCalibrationResults-request>)))
  "Returns string type for a service object of type '<GetCalibrationResults-request>"
  "calibration_msgs/GetCalibrationResultsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCalibrationResults-request)))
  "Returns string type for a service object of type 'GetCalibrationResults-request"
  "calibration_msgs/GetCalibrationResultsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCalibrationResults-request>)))
  "Returns md5sum for a message object of type '<GetCalibrationResults-request>"
  "0bbbf0e9d4af3cb89da005d0841c9f95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCalibrationResults-request)))
  "Returns md5sum for a message object of type 'GetCalibrationResults-request"
  "0bbbf0e9d4af3cb89da005d0841c9f95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCalibrationResults-request>)))
  "Returns full string definition for message of type '<GetCalibrationResults-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCalibrationResults-request)))
  "Returns full string definition for message of type 'GetCalibrationResults-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCalibrationResults-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCalibrationResults-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCalibrationResults-request
))
;//! \htmlinclude GetCalibrationResults-response.msg.html

(cl:defclass <GetCalibrationResults-response> (roslisp-msg-protocol:ros-message)
  ((poses
    :reader poses
    :initarg :poses
    :type (cl:vector calibration_msgs-msg:CalibrationPose)
   :initform (cl:make-array 0 :element-type 'calibration_msgs-msg:CalibrationPose :initial-element (cl:make-instance 'calibration_msgs-msg:CalibrationPose))))
)

(cl:defclass GetCalibrationResults-response (<GetCalibrationResults-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCalibrationResults-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCalibrationResults-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-srv:<GetCalibrationResults-response> is deprecated: use calibration_msgs-srv:GetCalibrationResults-response instead.")))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <GetCalibrationResults-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-srv:poses-val is deprecated.  Use calibration_msgs-srv:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCalibrationResults-response>) ostream)
  "Serializes a message object of type '<GetCalibrationResults-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCalibrationResults-response>) istream)
  "Deserializes a message object of type '<GetCalibrationResults-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calibration_msgs-msg:CalibrationPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCalibrationResults-response>)))
  "Returns string type for a service object of type '<GetCalibrationResults-response>"
  "calibration_msgs/GetCalibrationResultsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCalibrationResults-response)))
  "Returns string type for a service object of type 'GetCalibrationResults-response"
  "calibration_msgs/GetCalibrationResultsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCalibrationResults-response>)))
  "Returns md5sum for a message object of type '<GetCalibrationResults-response>"
  "0bbbf0e9d4af3cb89da005d0841c9f95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCalibrationResults-response)))
  "Returns md5sum for a message object of type 'GetCalibrationResults-response"
  "0bbbf0e9d4af3cb89da005d0841c9f95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCalibrationResults-response>)))
  "Returns full string definition for message of type '<GetCalibrationResults-response>"
  (cl:format cl:nil "~%calibration_msgs/CalibrationPose[] poses~%~%~%~%================================================================================~%MSG: calibration_msgs/CalibrationPose~%string    frame_id~%~%string    child_frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCalibrationResults-response)))
  "Returns full string definition for message of type 'GetCalibrationResults-response"
  (cl:format cl:nil "~%calibration_msgs/CalibrationPose[] poses~%~%~%~%================================================================================~%MSG: calibration_msgs/CalibrationPose~%string    frame_id~%~%string    child_frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCalibrationResults-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCalibrationResults-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCalibrationResults-response
    (cl:cons ':poses (poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCalibrationResults)))
  'GetCalibrationResults-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCalibrationResults)))
  'GetCalibrationResults-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCalibrationResults)))
  "Returns string type for a service object of type '<GetCalibrationResults>"
  "calibration_msgs/GetCalibrationResults")