;; Auto-generated. Do not edit!


(when (boundp 'mhri_social_msgs::FaceDetection3D)
  (if (not (find-package "MHRI_SOCIAL_MSGS"))
    (make-package "MHRI_SOCIAL_MSGS"))
  (shadow 'FaceDetection3D (find-package "MHRI_SOCIAL_MSGS")))
(unless (find-package "MHRI_SOCIAL_MSGS::FACEDETECTION3D")
  (make-package "MHRI_SOCIAL_MSGS::FACEDETECTION3D"))

(in-package "ROS")
;;//! \htmlinclude FaceDetection3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass mhri_social_msgs::FaceDetection3D
  :super ros::object
  :slots (_num_of_detected _faces_pose _faces_image ))

(defmethod mhri_social_msgs::FaceDetection3D
  (:init
   (&key
    ((:num_of_detected __num_of_detected) 0)
    ((:faces_pose __faces_pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PointStamped :init) r)) r))
    ((:faces_image __faces_image) (let (r) (dotimes (i 0) (push (instance sensor_msgs::Image :init) r)) r))
    )
   (send-super :init)
   (setq _num_of_detected (round __num_of_detected))
   (setq _faces_pose __faces_pose)
   (setq _faces_image __faces_image)
   self)
  (:num_of_detected
   (&optional __num_of_detected)
   (if __num_of_detected (setq _num_of_detected __num_of_detected)) _num_of_detected)
  (:faces_pose
   (&rest __faces_pose)
   (if (keywordp (car __faces_pose))
       (send* _faces_pose __faces_pose)
     (progn
       (if __faces_pose (setq _faces_pose (car __faces_pose)))
       _faces_pose)))
  (:faces_image
   (&rest __faces_image)
   (if (keywordp (car __faces_image))
       (send* _faces_image __faces_image)
     (progn
       (if __faces_image (setq _faces_image (car __faces_image)))
       _faces_image)))
  (:serialization-length
   ()
   (+
    ;; int32 _num_of_detected
    4
    ;; geometry_msgs/PointStamped[] _faces_pose
    (apply #'+ (send-all _faces_pose :serialization-length)) 4
    ;; sensor_msgs/Image[] _faces_image
    (apply #'+ (send-all _faces_image :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_of_detected
       (write-long _num_of_detected s)
     ;; geometry_msgs/PointStamped[] _faces_pose
     (write-long (length _faces_pose) s)
     (dolist (elem _faces_pose)
       (send elem :serialize s)
       )
     ;; sensor_msgs/Image[] _faces_image
     (write-long (length _faces_image) s)
     (dolist (elem _faces_image)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_of_detected
     (setq _num_of_detected (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PointStamped[] _faces_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces_pose (let (r) (dotimes (i n) (push (instance geometry_msgs::PointStamped :init) r)) r))
     (dolist (elem- _faces_pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/Image[] _faces_image
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces_image (let (r) (dotimes (i n) (push (instance sensor_msgs::Image :init) r)) r))
     (dolist (elem- _faces_image)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mhri_social_msgs::FaceDetection3D :md5sum-) "038b473215491c8276c651727ebdf695")
(setf (get mhri_social_msgs::FaceDetection3D :datatype-) "mhri_social_msgs/FaceDetection3D")
(setf (get mhri_social_msgs::FaceDetection3D :definition-)
      "int32 num_of_detected
geometry_msgs/PointStamped[] faces_pose
sensor_msgs/Image[] faces_image

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

")



(provide :mhri_social_msgs/FaceDetection3D "038b473215491c8276c651727ebdf695")


