;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::CheckerboardExtractionGoal)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'CheckerboardExtractionGoal (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL")
  (make-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude CheckerboardExtractionGoal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*EXTRACT_FROM_NONE*" (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(shadow '*EXTRACT_FROM_NONE* (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(defconstant calibration_msgs::CheckerboardExtractionGoal::*EXTRACT_FROM_NONE* 0)
(intern "*EXTRACT_FROM_IMAGE*" (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(shadow '*EXTRACT_FROM_IMAGE* (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(defconstant calibration_msgs::CheckerboardExtractionGoal::*EXTRACT_FROM_IMAGE* 1)
(intern "*EXTRACT_FROM_DEPTH*" (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(shadow '*EXTRACT_FROM_DEPTH* (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(defconstant calibration_msgs::CheckerboardExtractionGoal::*EXTRACT_FROM_DEPTH* 2)
(intern "*EXTRACT_FROM_ALL*" (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(shadow '*EXTRACT_FROM_ALL* (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(defconstant calibration_msgs::CheckerboardExtractionGoal::*EXTRACT_FROM_ALL* 3)
(intern "*ALL_POINTS*" (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(shadow '*ALL_POINTS* (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(defconstant calibration_msgs::CheckerboardExtractionGoal::*ALL_POINTS* -1)
(intern "*PLANE_ONLY*" (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(shadow '*PLANE_ONLY* (find-package "CALIBRATION_MSGS::CHECKERBOARDEXTRACTIONGOAL"))
(defconstant calibration_msgs::CheckerboardExtractionGoal::*PLANE_ONLY* 0)
(defclass calibration_msgs::CheckerboardExtractionGoal
  :super ros::object
  :slots (_header _checkerboard _extract_from _max_depth_points ))

(defmethod calibration_msgs::CheckerboardExtractionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:checkerboard __checkerboard) (instance calibration_msgs::Checkerboard :init))
    ((:extract_from __extract_from) 0)
    ((:max_depth_points __max_depth_points) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _checkerboard __checkerboard)
   (setq _extract_from (round __extract_from))
   (setq _max_depth_points (round __max_depth_points))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:checkerboard
   (&rest __checkerboard)
   (if (keywordp (car __checkerboard))
       (send* _checkerboard __checkerboard)
     (progn
       (if __checkerboard (setq _checkerboard (car __checkerboard)))
       _checkerboard)))
  (:extract_from
   (&optional __extract_from)
   (if __extract_from (setq _extract_from __extract_from)) _extract_from)
  (:max_depth_points
   (&optional __max_depth_points)
   (if __max_depth_points (setq _max_depth_points __max_depth_points)) _max_depth_points)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; calibration_msgs/Checkerboard _checkerboard
    (send _checkerboard :serialization-length)
    ;; uint8 _extract_from
    1
    ;; int32 _max_depth_points
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; calibration_msgs/Checkerboard _checkerboard
       (send _checkerboard :serialize s)
     ;; uint8 _extract_from
       (write-byte _extract_from s)
     ;; int32 _max_depth_points
       (write-long _max_depth_points s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; calibration_msgs/Checkerboard _checkerboard
     (send _checkerboard :deserialize buf ptr-) (incf ptr- (send _checkerboard :serialization-length))
   ;; uint8 _extract_from
     (setq _extract_from (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _max_depth_points
     (setq _max_depth_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get calibration_msgs::CheckerboardExtractionGoal :md5sum-) "6755a0628825fba080d03429f57f9f9e")
(setf (get calibration_msgs::CheckerboardExtractionGoal :datatype-) "calibration_msgs/CheckerboardExtractionGoal")
(setf (get calibration_msgs::CheckerboardExtractionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal

uint8 EXTRACT_FROM_NONE=0
uint8 EXTRACT_FROM_IMAGE=1
uint8 EXTRACT_FROM_DEPTH=2
uint8 EXTRACT_FROM_ALL=3

int32 ALL_POINTS=-1
int32 PLANE_ONLY=0

Header header

Checkerboard checkerboard
uint8 extract_from
int32 max_depth_points

# max_depth_points must be in the interval [3, +inf[
# or be one of the special values ALL_POINTS, PLANE_ONLY


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
MSG: calibration_msgs/Checkerboard
Header header

string parent_frame_id
geometry_msgs/Pose pose

uint32 rows
uint32 cols
float32 cell_width
float32 cell_height

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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



(provide :calibration_msgs/CheckerboardExtractionGoal "6755a0628825fba080d03429f57f9f9e")


