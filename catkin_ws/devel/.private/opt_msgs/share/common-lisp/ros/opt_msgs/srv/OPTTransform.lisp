; Auto-generated. Do not edit!


(cl:in-package opt_msgs-srv)


;//! \htmlinclude OPTTransform-request.msg.html

(cl:defclass <OPTTransform-request> (roslisp-msg-protocol:ros-message)
  ((calibration_id
    :reader calibration_id
    :initarg :calibration_id
    :type cl:integer
    :initform 0)
   (parent_id
    :reader parent_id
    :initarg :parent_id
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (child_id
    :reader child_id
    :initarg :child_id
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (transform
    :reader transform
    :initarg :transform
    :type (cl:vector geometry_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Transform :initial-element (cl:make-instance 'geometry_msgs-msg:Transform))))
)

(cl:defclass OPTTransform-request (<OPTTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OPTTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OPTTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-srv:<OPTTransform-request> is deprecated: use opt_msgs-srv:OPTTransform-request instead.")))

(cl:ensure-generic-function 'calibration_id-val :lambda-list '(m))
(cl:defmethod calibration_id-val ((m <OPTTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:calibration_id-val is deprecated.  Use opt_msgs-srv:calibration_id instead.")
  (calibration_id m))

(cl:ensure-generic-function 'parent_id-val :lambda-list '(m))
(cl:defmethod parent_id-val ((m <OPTTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:parent_id-val is deprecated.  Use opt_msgs-srv:parent_id instead.")
  (parent_id m))

(cl:ensure-generic-function 'child_id-val :lambda-list '(m))
(cl:defmethod child_id-val ((m <OPTTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:child_id-val is deprecated.  Use opt_msgs-srv:child_id instead.")
  (child_id m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <OPTTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:transform-val is deprecated.  Use opt_msgs-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OPTTransform-request>) ostream)
  "Serializes a message object of type '<OPTTransform-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calibration_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'calibration_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'calibration_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'calibration_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'calibration_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'calibration_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'calibration_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'calibration_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parent_id))))
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
   (cl:slot-value msg 'parent_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'child_id))))
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
   (cl:slot-value msg 'child_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transform))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transform))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OPTTransform-request>) istream)
  "Deserializes a message object of type '<OPTTransform-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calibration_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'calibration_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'calibration_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'calibration_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'calibration_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'calibration_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'calibration_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'calibration_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parent_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parent_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'child_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'child_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transform) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transform)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Transform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OPTTransform-request>)))
  "Returns string type for a service object of type '<OPTTransform-request>"
  "opt_msgs/OPTTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OPTTransform-request)))
  "Returns string type for a service object of type 'OPTTransform-request"
  "opt_msgs/OPTTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OPTTransform-request>)))
  "Returns md5sum for a message object of type '<OPTTransform-request>"
  "c280824f01567ccd998b38545c5bda8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OPTTransform-request)))
  "Returns md5sum for a message object of type 'OPTTransform-request"
  "c280824f01567ccd998b38545c5bda8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OPTTransform-request>)))
  "Returns full string definition for message of type '<OPTTransform-request>"
  (cl:format cl:nil "uint64 calibration_id~%~%string[]                  parent_id~%string[]                  child_id~%geometry_msgs/Transform[] transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OPTTransform-request)))
  "Returns full string definition for message of type 'OPTTransform-request"
  (cl:format cl:nil "uint64 calibration_id~%~%string[]                  parent_id~%string[]                  child_id~%geometry_msgs/Transform[] transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OPTTransform-request>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parent_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'child_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transform) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OPTTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OPTTransform-request
    (cl:cons ':calibration_id (calibration_id msg))
    (cl:cons ':parent_id (parent_id msg))
    (cl:cons ':child_id (child_id msg))
    (cl:cons ':transform (transform msg))
))
;//! \htmlinclude OPTTransform-response.msg.html

(cl:defclass <OPTTransform-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass OPTTransform-response (<OPTTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OPTTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OPTTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-srv:<OPTTransform-response> is deprecated: use opt_msgs-srv:OPTTransform-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <OPTTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:status-val is deprecated.  Use opt_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <OPTTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-srv:message-val is deprecated.  Use opt_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OPTTransform-response>)))
    "Constants for message type '<OPTTransform-response>"
  '((:STATUS_OK . 0)
    (:STATUS_ERROR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OPTTransform-response)))
    "Constants for message type 'OPTTransform-response"
  '((:STATUS_OK . 0)
    (:STATUS_ERROR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OPTTransform-response>) ostream)
  "Serializes a message object of type '<OPTTransform-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OPTTransform-response>) istream)
  "Deserializes a message object of type '<OPTTransform-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OPTTransform-response>)))
  "Returns string type for a service object of type '<OPTTransform-response>"
  "opt_msgs/OPTTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OPTTransform-response)))
  "Returns string type for a service object of type 'OPTTransform-response"
  "opt_msgs/OPTTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OPTTransform-response>)))
  "Returns md5sum for a message object of type '<OPTTransform-response>"
  "c280824f01567ccd998b38545c5bda8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OPTTransform-response)))
  "Returns md5sum for a message object of type 'OPTTransform-response"
  "c280824f01567ccd998b38545c5bda8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OPTTransform-response>)))
  "Returns full string definition for message of type '<OPTTransform-response>"
  (cl:format cl:nil "~%uint8 STATUS_OK=0~%uint8 STATUS_ERROR=1~%~%uint8  status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OPTTransform-response)))
  "Returns full string definition for message of type 'OPTTransform-response"
  (cl:format cl:nil "~%uint8 STATUS_OK=0~%uint8 STATUS_ERROR=1~%~%uint8  status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OPTTransform-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OPTTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OPTTransform-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OPTTransform)))
  'OPTTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OPTTransform)))
  'OPTTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OPTTransform)))
  "Returns string type for a service object of type '<OPTTransform>"
  "opt_msgs/OPTTransform")