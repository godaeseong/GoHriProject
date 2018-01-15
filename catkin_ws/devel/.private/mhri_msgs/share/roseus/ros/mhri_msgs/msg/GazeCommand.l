;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::GazeCommand)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'GazeCommand (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::GAZECOMMAND")
  (make-package "MHRI_MSGS::GAZECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude GazeCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mhri_msgs::GazeCommand
  :super ros::object
  :slots (_target_point _max_speed ))

(defmethod mhri_msgs::GazeCommand
  (:init
   (&key
    ((:target_point __target_point) (instance geometry_msgs::PointStamped :init))
    ((:max_speed __max_speed) 0.0)
    )
   (send-super :init)
   (setq _target_point __target_point)
   (setq _max_speed (float __max_speed))
   self)
  (:target_point
   (&rest __target_point)
   (if (keywordp (car __target_point))
       (send* _target_point __target_point)
     (progn
       (if __target_point (setq _target_point (car __target_point)))
       _target_point)))
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PointStamped _target_point
    (send _target_point :serialization-length)
    ;; float32 _max_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped _target_point
       (send _target_point :serialize s)
     ;; float32 _max_speed
       (sys::poke _max_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped _target_point
     (send _target_point :deserialize buf ptr-) (incf ptr- (send _target_point :serialization-length))
   ;; float32 _max_speed
     (setq _max_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mhri_msgs::GazeCommand :md5sum-) "6b9eaeb25ff2a12d04fe425e3000dee3")
(setf (get mhri_msgs::GazeCommand :datatype-) "mhri_msgs/GazeCommand")
(setf (get mhri_msgs::GazeCommand :definition-)
      "geometry_msgs/PointStamped target_point
float32 max_speed

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

")



(provide :mhri_msgs/GazeCommand "6b9eaeb25ff2a12d04fe425e3000dee3")


