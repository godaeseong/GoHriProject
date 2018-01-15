; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude Polynomial.msg.html

(cl:defclass <Polynomial> (roslisp-msg-protocol:ros-message)
  ((max_degree
    :reader max_degree
    :initarg :max_degree
    :type cl:integer
    :initform 0)
   (min_degree
    :reader min_degree
    :initarg :min_degree
    :type cl:integer
    :initform 0)
   (coefficients
    :reader coefficients
    :initarg :coefficients
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Polynomial (<Polynomial>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polynomial>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polynomial)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<Polynomial> is deprecated: use calibration_msgs-msg:Polynomial instead.")))

(cl:ensure-generic-function 'max_degree-val :lambda-list '(m))
(cl:defmethod max_degree-val ((m <Polynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:max_degree-val is deprecated.  Use calibration_msgs-msg:max_degree instead.")
  (max_degree m))

(cl:ensure-generic-function 'min_degree-val :lambda-list '(m))
(cl:defmethod min_degree-val ((m <Polynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:min_degree-val is deprecated.  Use calibration_msgs-msg:min_degree instead.")
  (min_degree m))

(cl:ensure-generic-function 'coefficients-val :lambda-list '(m))
(cl:defmethod coefficients-val ((m <Polynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:coefficients-val is deprecated.  Use calibration_msgs-msg:coefficients instead.")
  (coefficients m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polynomial>) ostream)
  "Serializes a message object of type '<Polynomial>"
  (cl:let* ((signed (cl:slot-value msg 'max_degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'min_degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coefficients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'coefficients))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polynomial>) istream)
  "Deserializes a message object of type '<Polynomial>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_degree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'min_degree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coefficients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coefficients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polynomial>)))
  "Returns string type for a message object of type '<Polynomial>"
  "calibration_msgs/Polynomial")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polynomial)))
  "Returns string type for a message object of type 'Polynomial"
  "calibration_msgs/Polynomial")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polynomial>)))
  "Returns md5sum for a message object of type '<Polynomial>"
  "2bf430c82e35b84262e2b764637662e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polynomial)))
  "Returns md5sum for a message object of type 'Polynomial"
  "2bf430c82e35b84262e2b764637662e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polynomial>)))
  "Returns full string definition for message of type '<Polynomial>"
  (cl:format cl:nil "int32 max_degree~%int32 min_degree~%float64[] coefficients~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polynomial)))
  "Returns full string definition for message of type 'Polynomial"
  (cl:format cl:nil "int32 max_degree~%int32 min_degree~%float64[] coefficients~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polynomial>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coefficients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polynomial>))
  "Converts a ROS message object to a list"
  (cl:list 'Polynomial
    (cl:cons ':max_degree (max_degree msg))
    (cl:cons ':min_degree (min_degree msg))
    (cl:cons ':coefficients (coefficients msg))
))
