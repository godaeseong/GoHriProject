;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::Checkerboard)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'Checkerboard (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::CHECKERBOARD")
  (make-package "CALIBRATION_MSGS::CHECKERBOARD"))

(in-package "ROS")
;;//! \htmlinclude Checkerboard.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::Checkerboard
  :super ros::object
  :slots (_header _parent_frame_id _pose _rows _cols _cell_width _cell_height ))

(defmethod calibration_msgs::Checkerboard
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parent_frame_id __parent_frame_id) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:rows __rows) 0)
    ((:cols __cols) 0)
    ((:cell_width __cell_width) 0.0)
    ((:cell_height __cell_height) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _parent_frame_id (string __parent_frame_id))
   (setq _pose __pose)
   (setq _rows (round __rows))
   (setq _cols (round __cols))
   (setq _cell_width (float __cell_width))
   (setq _cell_height (float __cell_height))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:parent_frame_id
   (&optional __parent_frame_id)
   (if __parent_frame_id (setq _parent_frame_id __parent_frame_id)) _parent_frame_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:rows
   (&optional __rows)
   (if __rows (setq _rows __rows)) _rows)
  (:cols
   (&optional __cols)
   (if __cols (setq _cols __cols)) _cols)
  (:cell_width
   (&optional __cell_width)
   (if __cell_width (setq _cell_width __cell_width)) _cell_width)
  (:cell_height
   (&optional __cell_height)
   (if __cell_height (setq _cell_height __cell_height)) _cell_height)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _parent_frame_id
    4 (length _parent_frame_id)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint32 _rows
    4
    ;; uint32 _cols
    4
    ;; float32 _cell_width
    4
    ;; float32 _cell_height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _parent_frame_id
       (write-long (length _parent_frame_id) s) (princ _parent_frame_id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint32 _rows
       (write-long _rows s)
     ;; uint32 _cols
       (write-long _cols s)
     ;; float32 _cell_width
       (sys::poke _cell_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cell_height
       (sys::poke _cell_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _parent_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint32 _rows
     (setq _rows (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cols
     (setq _cols (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _cell_width
     (setq _cell_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cell_height
     (setq _cell_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get calibration_msgs::Checkerboard :md5sum-) "f294a2ad8679265397b75fad5672c495")
(setf (get calibration_msgs::Checkerboard :datatype-) "calibration_msgs/Checkerboard")
(setf (get calibration_msgs::Checkerboard :definition-)
      "Header header

string parent_frame_id
geometry_msgs/Pose pose

uint32 rows
uint32 cols
float32 cell_width
float32 cell_height

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



(provide :calibration_msgs/Checkerboard "f294a2ad8679265397b75fad5672c495")


