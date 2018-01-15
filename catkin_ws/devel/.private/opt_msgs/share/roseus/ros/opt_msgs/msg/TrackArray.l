;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::TrackArray)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'TrackArray (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::TRACKARRAY")
  (make-package "OPT_MSGS::TRACKARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrackArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opt_msgs::TrackArray
  :super ros::object
  :slots (_header _tracks ))

(defmethod opt_msgs::TrackArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracks __tracks) (let (r) (dotimes (i 0) (push (instance opt_msgs::Track :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracks __tracks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracks
   (&rest __tracks)
   (if (keywordp (car __tracks))
       (send* _tracks __tracks)
     (progn
       (if __tracks (setq _tracks (car __tracks)))
       _tracks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opt_msgs/Track[] _tracks
    (apply #'+ (send-all _tracks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opt_msgs/Track[] _tracks
     (write-long (length _tracks) s)
     (dolist (elem _tracks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opt_msgs/Track[] _tracks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracks (let (r) (dotimes (i n) (push (instance opt_msgs::Track :init) r)) r))
     (dolist (elem- _tracks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get opt_msgs::TrackArray :md5sum-) "4106b2da5c66b9f239aada7912e67b8f")
(setf (get opt_msgs::TrackArray :datatype-) "opt_msgs/TrackArray")
(setf (get opt_msgs::TrackArray :definition-)
      "Header header

opt_msgs/Track[] tracks

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
MSG: opt_msgs/Track
uint8 VISIBLE = 0
uint8 OCCLUDED = 1
uint8 NOT_VISIBLE = 2

int32 id

float64 x
float64 y
float64 height
float64 distance
float64 age
float64 confidence

uint8 visibility

opt_msgs/BoundingBox2D box_2D


================================================================================
MSG: opt_msgs/BoundingBox2D
int32 x
int32 y
int32 width
int32 height
")



(provide :opt_msgs/TrackArray "4106b2da5c66b9f239aada7912e67b8f")


