;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::DetectionArray)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'DetectionArray (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::DETECTIONARRAY")
  (make-package "OPT_MSGS::DETECTIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectionArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opt_msgs::DetectionArray
  :super ros::object
  :slots (_header _detections _intrinsic_matrix _confidence_type _image_type ))

(defmethod opt_msgs::DetectionArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detections __detections) (let (r) (dotimes (i 0) (push (instance opt_msgs::Detection :init) r)) r))
    ((:intrinsic_matrix __intrinsic_matrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:confidence_type __confidence_type) "")
    ((:image_type __image_type) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _detections __detections)
   (setq _intrinsic_matrix __intrinsic_matrix)
   (setq _confidence_type (string __confidence_type))
   (setq _image_type (string __image_type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:intrinsic_matrix
   (&optional __intrinsic_matrix)
   (if __intrinsic_matrix (setq _intrinsic_matrix __intrinsic_matrix)) _intrinsic_matrix)
  (:confidence_type
   (&optional __confidence_type)
   (if __confidence_type (setq _confidence_type __confidence_type)) _confidence_type)
  (:image_type
   (&optional __image_type)
   (if __image_type (setq _image_type __image_type)) _image_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opt_msgs/Detection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ;; float64[] _intrinsic_matrix
    (* 8    (length _intrinsic_matrix)) 4
    ;; string _confidence_type
    4 (length _confidence_type)
    ;; string _image_type
    4 (length _image_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opt_msgs/Detection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;; float64[] _intrinsic_matrix
     (write-long (length _intrinsic_matrix) s)
     (dotimes (i (length _intrinsic_matrix))
       (sys::poke (elt _intrinsic_matrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _confidence_type
       (write-long (length _confidence_type) s) (princ _confidence_type s)
     ;; string _image_type
       (write-long (length _image_type) s) (princ _image_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opt_msgs/Detection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance opt_msgs::Detection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _intrinsic_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intrinsic_matrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intrinsic_matrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _confidence_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _confidence_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _image_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get opt_msgs::DetectionArray :md5sum-) "2be460a0a39ff0f809695e59da9d469e")
(setf (get opt_msgs::DetectionArray :datatype-) "opt_msgs/DetectionArray")
(setf (get opt_msgs::DetectionArray :definition-)
      "Header header

opt_msgs/Detection[] detections
float64[] intrinsic_matrix
string confidence_type
string image_type

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: opt_msgs/Detection
opt_msgs/BoundingBox3D box_3D
opt_msgs/BoundingBox2D box_2D

geometry_msgs/Vector3 centroid
geometry_msgs/Vector3 bottom
geometry_msgs/Vector3 top

float64 height
float64 confidence
float64 distance
bool occluded

================================================================================
MSG: opt_msgs/BoundingBox3D
geometry_msgs/Vector3 p1
geometry_msgs/Vector3 p2
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: opt_msgs/BoundingBox2D
int32 x
int32 y
int32 width
int32 height
")



(provide :opt_msgs/DetectionArray "2be460a0a39ff0f809695e59da9d469e")


