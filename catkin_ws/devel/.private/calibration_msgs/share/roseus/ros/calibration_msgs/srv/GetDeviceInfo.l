;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::GetDeviceInfo)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'GetDeviceInfo (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::GETDEVICEINFO")
  (make-package "CALIBRATION_MSGS::GETDEVICEINFO"))
(unless (find-package "CALIBRATION_MSGS::GETDEVICEINFOREQUEST")
  (make-package "CALIBRATION_MSGS::GETDEVICEINFOREQUEST"))
(unless (find-package "CALIBRATION_MSGS::GETDEVICEINFORESPONSE")
  (make-package "CALIBRATION_MSGS::GETDEVICEINFORESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*INTENSITY*" (find-package "CALIBRATION_MSGS::GETDEVICEINFOREQUEST"))
(shadow '*INTENSITY* (find-package "CALIBRATION_MSGS::GETDEVICEINFOREQUEST"))
(defconstant calibration_msgs::GetDeviceInfoRequest::*INTENSITY* 1)
(intern "*DEPTH*" (find-package "CALIBRATION_MSGS::GETDEVICEINFOREQUEST"))
(shadow '*DEPTH* (find-package "CALIBRATION_MSGS::GETDEVICEINFOREQUEST"))
(defconstant calibration_msgs::GetDeviceInfoRequest::*DEPTH* 2)
(intern "*ALL*" (find-package "CALIBRATION_MSGS::GETDEVICEINFOREQUEST"))
(shadow '*ALL* (find-package "CALIBRATION_MSGS::GETDEVICEINFOREQUEST"))
(defconstant calibration_msgs::GetDeviceInfoRequest::*ALL* 3)
(defclass calibration_msgs::GetDeviceInfoRequest
  :super ros::object
  :slots (_requested_types ))

(defmethod calibration_msgs::GetDeviceInfoRequest
  (:init
   (&key
    ((:requested_types __requested_types) 0)
    )
   (send-super :init)
   (setq _requested_types (round __requested_types))
   self)
  (:requested_types
   (&optional __requested_types)
   (if __requested_types (setq _requested_types __requested_types)) _requested_types)
  (:serialization-length
   ()
   (+
    ;; uint8 _requested_types
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _requested_types
       (write-byte _requested_types s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _requested_types
     (setq _requested_types (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(intern "*UNDEFINED*" (find-package "CALIBRATION_MSGS::GETDEVICEINFORESPONSE"))
(shadow '*UNDEFINED* (find-package "CALIBRATION_MSGS::GETDEVICEINFORESPONSE"))
(defconstant calibration_msgs::GetDeviceInfoResponse::*UNDEFINED* 0)
(intern "*INTENSITY*" (find-package "CALIBRATION_MSGS::GETDEVICEINFORESPONSE"))
(shadow '*INTENSITY* (find-package "CALIBRATION_MSGS::GETDEVICEINFORESPONSE"))
(defconstant calibration_msgs::GetDeviceInfoResponse::*INTENSITY* 1)
(intern "*DEPTH*" (find-package "CALIBRATION_MSGS::GETDEVICEINFORESPONSE"))
(shadow '*DEPTH* (find-package "CALIBRATION_MSGS::GETDEVICEINFORESPONSE"))
(defconstant calibration_msgs::GetDeviceInfoResponse::*DEPTH* 2)
(defclass calibration_msgs::GetDeviceInfoResponse
  :super ros::object
  :slots (_sensor_types _camera_infos _error_polynomials _initial_transforms _fixed_transforms ))

(defmethod calibration_msgs::GetDeviceInfoResponse
  (:init
   (&key
    ((:sensor_types __sensor_types) (make-array 0 :initial-element 0 :element-type :char))
    ((:camera_infos __camera_infos) (let (r) (dotimes (i 0) (push (instance sensor_msgs::CameraInfo :init) r)) r))
    ((:error_polynomials __error_polynomials) (let (r) (dotimes (i 0) (push (instance calibration_msgs::Polynomial :init) r)) r))
    ((:initial_transforms __initial_transforms) (let (r) (dotimes (i 0) (push (instance geometry_msgs::TransformStamped :init) r)) r))
    ((:fixed_transforms __fixed_transforms) (let (r) (dotimes (i 0) (push (instance geometry_msgs::TransformStamped :init) r)) r))
    )
   (send-super :init)
   (setq _sensor_types __sensor_types)
   (setq _camera_infos __camera_infos)
   (setq _error_polynomials __error_polynomials)
   (setq _initial_transforms __initial_transforms)
   (setq _fixed_transforms __fixed_transforms)
   self)
  (:sensor_types
   (&optional __sensor_types)
   (if __sensor_types (setq _sensor_types __sensor_types)) _sensor_types)
  (:camera_infos
   (&rest __camera_infos)
   (if (keywordp (car __camera_infos))
       (send* _camera_infos __camera_infos)
     (progn
       (if __camera_infos (setq _camera_infos (car __camera_infos)))
       _camera_infos)))
  (:error_polynomials
   (&rest __error_polynomials)
   (if (keywordp (car __error_polynomials))
       (send* _error_polynomials __error_polynomials)
     (progn
       (if __error_polynomials (setq _error_polynomials (car __error_polynomials)))
       _error_polynomials)))
  (:initial_transforms
   (&rest __initial_transforms)
   (if (keywordp (car __initial_transforms))
       (send* _initial_transforms __initial_transforms)
     (progn
       (if __initial_transforms (setq _initial_transforms (car __initial_transforms)))
       _initial_transforms)))
  (:fixed_transforms
   (&rest __fixed_transforms)
   (if (keywordp (car __fixed_transforms))
       (send* _fixed_transforms __fixed_transforms)
     (progn
       (if __fixed_transforms (setq _fixed_transforms (car __fixed_transforms)))
       _fixed_transforms)))
  (:serialization-length
   ()
   (+
    ;; uint8[] _sensor_types
    (* 1    (length _sensor_types)) 4
    ;; sensor_msgs/CameraInfo[] _camera_infos
    (apply #'+ (send-all _camera_infos :serialization-length)) 4
    ;; calibration_msgs/Polynomial[] _error_polynomials
    (apply #'+ (send-all _error_polynomials :serialization-length)) 4
    ;; geometry_msgs/TransformStamped[] _initial_transforms
    (apply #'+ (send-all _initial_transforms :serialization-length)) 4
    ;; geometry_msgs/TransformStamped[] _fixed_transforms
    (apply #'+ (send-all _fixed_transforms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _sensor_types
     (write-long (length _sensor_types) s)
     (princ _sensor_types s)
     ;; sensor_msgs/CameraInfo[] _camera_infos
     (write-long (length _camera_infos) s)
     (dolist (elem _camera_infos)
       (send elem :serialize s)
       )
     ;; calibration_msgs/Polynomial[] _error_polynomials
     (write-long (length _error_polynomials) s)
     (dolist (elem _error_polynomials)
       (send elem :serialize s)
       )
     ;; geometry_msgs/TransformStamped[] _initial_transforms
     (write-long (length _initial_transforms) s)
     (dolist (elem _initial_transforms)
       (send elem :serialize s)
       )
     ;; geometry_msgs/TransformStamped[] _fixed_transforms
     (write-long (length _fixed_transforms) s)
     (dolist (elem _fixed_transforms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _sensor_types
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _sensor_types (make-array n :element-type :char))
     (replace _sensor_types buf :start2 ptr-) (incf ptr- n))
   ;; sensor_msgs/CameraInfo[] _camera_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_infos (let (r) (dotimes (i n) (push (instance sensor_msgs::CameraInfo :init) r)) r))
     (dolist (elem- _camera_infos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; calibration_msgs/Polynomial[] _error_polynomials
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_polynomials (let (r) (dotimes (i n) (push (instance calibration_msgs::Polynomial :init) r)) r))
     (dolist (elem- _error_polynomials)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/TransformStamped[] _initial_transforms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _initial_transforms (let (r) (dotimes (i n) (push (instance geometry_msgs::TransformStamped :init) r)) r))
     (dolist (elem- _initial_transforms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/TransformStamped[] _fixed_transforms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fixed_transforms (let (r) (dotimes (i n) (push (instance geometry_msgs::TransformStamped :init) r)) r))
     (dolist (elem- _fixed_transforms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass calibration_msgs::GetDeviceInfo
  :super ros::object
  :slots ())

(setf (get calibration_msgs::GetDeviceInfo :md5sum-) "da6eb3cec2613536c7b7d4f43941b1a0")
(setf (get calibration_msgs::GetDeviceInfo :datatype-) "calibration_msgs/GetDeviceInfo")
(setf (get calibration_msgs::GetDeviceInfo :request) calibration_msgs::GetDeviceInfoRequest)
(setf (get calibration_msgs::GetDeviceInfo :response) calibration_msgs::GetDeviceInfoResponse)

(defmethod calibration_msgs::GetDeviceInfoRequest
  (:response () (instance calibration_msgs::GetDeviceInfoResponse :init)))

(setf (get calibration_msgs::GetDeviceInfoRequest :md5sum-) "da6eb3cec2613536c7b7d4f43941b1a0")
(setf (get calibration_msgs::GetDeviceInfoRequest :datatype-) "calibration_msgs/GetDeviceInfoRequest")
(setf (get calibration_msgs::GetDeviceInfoRequest :definition-)
      "uint8 INTENSITY=1
uint8 DEPTH=2
uint8 ALL=3

uint8 requested_types

---

uint8 UNDEFINED=0
uint8 INTENSITY=1
uint8 DEPTH=2

uint8[]                          sensor_types
sensor_msgs/CameraInfo[]         camera_infos
Polynomial[]                     error_polynomials

geometry_msgs/TransformStamped[] initial_transforms
geometry_msgs/TransformStamped[] fixed_transforms



================================================================================
MSG: sensor_msgs/CameraInfo
# This message defines meta information for a camera. It should be in a
# camera namespace on topic \"camera_info\" and accompanied by up to five
# image topics named:
#
#   image_raw - raw data from the camera driver, possibly Bayer encoded
#   image            - monochrome, distorted
#   image_color      - color, distorted
#   image_rect       - monochrome, rectified
#   image_rect_color - color, rectified
#
# The image_pipeline contains packages (image_proc, stereo_image_proc)
# for producing the four processed image topics from image_raw and
# camera_info. The meaning of the camera parameters are described in
# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
#
# The image_geometry package provides a user-friendly interface to
# common operations using this meta information. If you want to, e.g.,
# project a 3d point into image coordinates, we strongly recommend
# using image_geometry.
#
# If the camera is uncalibrated, the matrices D, K, R, P should be left
# zeroed out. In particular, clients may assume that K[0] == 0.0
# indicates an uncalibrated camera.

#######################################################################
#                     Image acquisition info                          #
#######################################################################

# Time of image acquisition, camera coordinate frame ID
Header header    # Header timestamp should be acquisition time of image
                 # Header frame_id should be optical frame of camera
                 # origin of frame should be optical center of camera
                 # +x should point to the right in the image
                 # +y should point down in the image
                 # +z should point into the plane of the image


#######################################################################
#                      Calibration Parameters                         #
#######################################################################
# These are fixed during camera calibration. Their values will be the #
# same in all messages until the camera is recalibrated. Note that    #
# self-calibrating systems may \"recalibrate\" frequently.              #
#                                                                     #
# The internal parameters can be used to warp a raw (distorted) image #
# to:                                                                 #
#   1. An undistorted image (requires D and K)                        #
#   2. A rectified image (requires D, K, R)                           #
# The projection matrix P projects 3D points into the rectified image.#
#######################################################################

# The image dimensions with which the camera was calibrated. Normally
# this will be the full camera resolution in pixels.
uint32 height
uint32 width

# The distortion model used. Supported models are listed in
# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a
# simple model of radial and tangential distortion - is sufficient.
string distortion_model

# The distortion parameters, size depending on the distortion model.
# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).
float64[] D

# Intrinsic camera matrix for the raw (distorted) images.
#     [fx  0 cx]
# K = [ 0 fy cy]
#     [ 0  0  1]
# Projects 3D points in the camera coordinate frame to 2D pixel
# coordinates using the focal lengths (fx, fy) and principal point
# (cx, cy).
float64[9]  K # 3x3 row-major matrix

# Rectification matrix (stereo cameras only)
# A rotation matrix aligning the camera coordinate system to the ideal
# stereo image plane so that epipolar lines in both stereo images are
# parallel.
float64[9]  R # 3x3 row-major matrix

# Projection/camera matrix
#     [fx'  0  cx' Tx]
# P = [ 0  fy' cy' Ty]
#     [ 0   0   1   0]
# By convention, this matrix specifies the intrinsic (camera) matrix
#  of the processed (rectified) image. That is, the left 3x3 portion
#  is the normal camera intrinsic matrix for the rectified image.
# It projects 3D points in the camera coordinate frame to 2D pixel
#  coordinates using the focal lengths (fx', fy') and principal point
#  (cx', cy') - these may differ from the values in K.
# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
#  also have R = the identity and P[1:3,1:3] = K.
# For a stereo pair, the fourth column [Tx Ty 0]' is related to the
#  position of the optical center of the second camera in the first
#  camera's frame. We assume Tz = 0 so both cameras are in the same
#  stereo image plane. The first camera always has Tx = Ty = 0. For
#  the right (second) camera of a horizontal stereo pair, Ty = 0 and
#  Tx = -fx' * B, where B is the baseline between the cameras.
# Given a 3D point [X Y Z]', the projection (x, y) of the point onto
#  the rectified image is given by:
#  [u v w]' = P * [X Y Z 1]'
#         x = u / w
#         y = v / w
#  This holds for both images of a stereo pair.
float64[12] P # 3x4 row-major matrix


#######################################################################
#                      Operational Parameters                         #
#######################################################################
# These define the image region actually captured by the camera       #
# driver. Although they affect the geometry of the output image, they #
# may be changed freely without recalibrating the camera.             #
#######################################################################

# Binning refers here to any camera setting which combines rectangular
#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the
#  resolution of the output image to
#  (width / binning_x) x (height / binning_y).
# The default values binning_x = binning_y = 0 is considered the same
#  as binning_x = binning_y = 1 (no subsampling).
uint32 binning_x
uint32 binning_y

# Region of interest (subwindow of full camera resolution), given in
#  full resolution (unbinned) image coordinates. A particular ROI
#  always denotes the same window of pixels on the camera sensor,
#  regardless of binning settings.
# The default setting of roi (all values 0) is considered the same as
#  full resolution (roi.width = width, roi.height = height).
RegionOfInterest roi

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
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: calibration_msgs/Polynomial
int32 max_degree
int32 min_degree
float64[] coefficients

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get calibration_msgs::GetDeviceInfoResponse :md5sum-) "da6eb3cec2613536c7b7d4f43941b1a0")
(setf (get calibration_msgs::GetDeviceInfoResponse :datatype-) "calibration_msgs/GetDeviceInfoResponse")
(setf (get calibration_msgs::GetDeviceInfoResponse :definition-)
      "uint8 INTENSITY=1
uint8 DEPTH=2
uint8 ALL=3

uint8 requested_types

---

uint8 UNDEFINED=0
uint8 INTENSITY=1
uint8 DEPTH=2

uint8[]                          sensor_types
sensor_msgs/CameraInfo[]         camera_infos
Polynomial[]                     error_polynomials

geometry_msgs/TransformStamped[] initial_transforms
geometry_msgs/TransformStamped[] fixed_transforms



================================================================================
MSG: sensor_msgs/CameraInfo
# This message defines meta information for a camera. It should be in a
# camera namespace on topic \"camera_info\" and accompanied by up to five
# image topics named:
#
#   image_raw - raw data from the camera driver, possibly Bayer encoded
#   image            - monochrome, distorted
#   image_color      - color, distorted
#   image_rect       - monochrome, rectified
#   image_rect_color - color, rectified
#
# The image_pipeline contains packages (image_proc, stereo_image_proc)
# for producing the four processed image topics from image_raw and
# camera_info. The meaning of the camera parameters are described in
# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
#
# The image_geometry package provides a user-friendly interface to
# common operations using this meta information. If you want to, e.g.,
# project a 3d point into image coordinates, we strongly recommend
# using image_geometry.
#
# If the camera is uncalibrated, the matrices D, K, R, P should be left
# zeroed out. In particular, clients may assume that K[0] == 0.0
# indicates an uncalibrated camera.

#######################################################################
#                     Image acquisition info                          #
#######################################################################

# Time of image acquisition, camera coordinate frame ID
Header header    # Header timestamp should be acquisition time of image
                 # Header frame_id should be optical frame of camera
                 # origin of frame should be optical center of camera
                 # +x should point to the right in the image
                 # +y should point down in the image
                 # +z should point into the plane of the image


#######################################################################
#                      Calibration Parameters                         #
#######################################################################
# These are fixed during camera calibration. Their values will be the #
# same in all messages until the camera is recalibrated. Note that    #
# self-calibrating systems may \"recalibrate\" frequently.              #
#                                                                     #
# The internal parameters can be used to warp a raw (distorted) image #
# to:                                                                 #
#   1. An undistorted image (requires D and K)                        #
#   2. A rectified image (requires D, K, R)                           #
# The projection matrix P projects 3D points into the rectified image.#
#######################################################################

# The image dimensions with which the camera was calibrated. Normally
# this will be the full camera resolution in pixels.
uint32 height
uint32 width

# The distortion model used. Supported models are listed in
# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a
# simple model of radial and tangential distortion - is sufficient.
string distortion_model

# The distortion parameters, size depending on the distortion model.
# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).
float64[] D

# Intrinsic camera matrix for the raw (distorted) images.
#     [fx  0 cx]
# K = [ 0 fy cy]
#     [ 0  0  1]
# Projects 3D points in the camera coordinate frame to 2D pixel
# coordinates using the focal lengths (fx, fy) and principal point
# (cx, cy).
float64[9]  K # 3x3 row-major matrix

# Rectification matrix (stereo cameras only)
# A rotation matrix aligning the camera coordinate system to the ideal
# stereo image plane so that epipolar lines in both stereo images are
# parallel.
float64[9]  R # 3x3 row-major matrix

# Projection/camera matrix
#     [fx'  0  cx' Tx]
# P = [ 0  fy' cy' Ty]
#     [ 0   0   1   0]
# By convention, this matrix specifies the intrinsic (camera) matrix
#  of the processed (rectified) image. That is, the left 3x3 portion
#  is the normal camera intrinsic matrix for the rectified image.
# It projects 3D points in the camera coordinate frame to 2D pixel
#  coordinates using the focal lengths (fx', fy') and principal point
#  (cx', cy') - these may differ from the values in K.
# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
#  also have R = the identity and P[1:3,1:3] = K.
# For a stereo pair, the fourth column [Tx Ty 0]' is related to the
#  position of the optical center of the second camera in the first
#  camera's frame. We assume Tz = 0 so both cameras are in the same
#  stereo image plane. The first camera always has Tx = Ty = 0. For
#  the right (second) camera of a horizontal stereo pair, Ty = 0 and
#  Tx = -fx' * B, where B is the baseline between the cameras.
# Given a 3D point [X Y Z]', the projection (x, y) of the point onto
#  the rectified image is given by:
#  [u v w]' = P * [X Y Z 1]'
#         x = u / w
#         y = v / w
#  This holds for both images of a stereo pair.
float64[12] P # 3x4 row-major matrix


#######################################################################
#                      Operational Parameters                         #
#######################################################################
# These define the image region actually captured by the camera       #
# driver. Although they affect the geometry of the output image, they #
# may be changed freely without recalibrating the camera.             #
#######################################################################

# Binning refers here to any camera setting which combines rectangular
#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the
#  resolution of the output image to
#  (width / binning_x) x (height / binning_y).
# The default values binning_x = binning_y = 0 is considered the same
#  as binning_x = binning_y = 1 (no subsampling).
uint32 binning_x
uint32 binning_y

# Region of interest (subwindow of full camera resolution), given in
#  full resolution (unbinned) image coordinates. A particular ROI
#  always denotes the same window of pixels on the camera sensor,
#  regardless of binning settings.
# The default setting of roi (all values 0) is considered the same as
#  full resolution (roi.width = width, roi.height = height).
RegionOfInterest roi

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
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: calibration_msgs/Polynomial
int32 max_degree
int32 min_degree
float64[] coefficients

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :calibration_msgs/GetDeviceInfo "da6eb3cec2613536c7b7d4f43941b1a0")


