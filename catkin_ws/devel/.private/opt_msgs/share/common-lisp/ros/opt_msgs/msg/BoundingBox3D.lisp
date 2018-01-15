; Auto-generated. Do not edit!


(cl:in-package opt_msgs-msg)


;//! \htmlinclude BoundingBox3D.msg.html

(cl:defclass <BoundingBox3D> (roslisp-msg-protocol:ros-message)
  ((p1
    :reader p1
    :initarg :p1
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (p2
    :reader p2
    :initarg :p2
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass BoundingBox3D (<BoundingBox3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-msg:<BoundingBox3D> is deprecated: use opt_msgs-msg:BoundingBox3D instead.")))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <BoundingBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:p1-val is deprecated.  Use opt_msgs-msg:p1 instead.")
  (p1 m))

(cl:ensure-generic-function 'p2-val :lambda-list '(m))
(cl:defmethod p2-val ((m <BoundingBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:p2-val is deprecated.  Use opt_msgs-msg:p2 instead.")
  (p2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox3D>) ostream)
  "Serializes a message object of type '<BoundingBox3D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox3D>) istream)
  "Deserializes a message object of type '<BoundingBox3D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox3D>)))
  "Returns string type for a message object of type '<BoundingBox3D>"
  "opt_msgs/BoundingBox3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox3D)))
  "Returns string type for a message object of type 'BoundingBox3D"
  "opt_msgs/BoundingBox3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox3D>)))
  "Returns md5sum for a message object of type '<BoundingBox3D>"
  "c2a2f62910885a9960c5f28cc78579c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox3D)))
  "Returns md5sum for a message object of type 'BoundingBox3D"
  "c2a2f62910885a9960c5f28cc78579c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox3D>)))
  "Returns full string definition for message of type '<BoundingBox3D>"
  (cl:format cl:nil "geometry_msgs/Vector3 p1~%geometry_msgs/Vector3 p2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox3D)))
  "Returns full string definition for message of type 'BoundingBox3D"
  (cl:format cl:nil "geometry_msgs/Vector3 p1~%geometry_msgs/Vector3 p2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox3D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox3D>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox3D
    (cl:cons ':p1 (p1 msg))
    (cl:cons ':p2 (p2 msg))
))
