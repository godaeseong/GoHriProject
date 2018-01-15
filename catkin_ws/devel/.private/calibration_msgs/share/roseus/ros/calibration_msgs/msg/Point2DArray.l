;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::Point2DArray)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'Point2DArray (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::POINT2DARRAY")
  (make-package "CALIBRATION_MSGS::POINT2DARRAY"))

(in-package "ROS")
;;//! \htmlinclude Point2DArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::Point2DArray
  :super ros::object
  :slots (_header _x_size _y_size _points ))

(defmethod calibration_msgs::Point2DArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_size __x_size) 0)
    ((:y_size __y_size) 0)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance calibration_msgs::Point2D :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_size (round __x_size))
   (setq _y_size (round __y_size))
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_size
   (&optional __x_size)
   (if __x_size (setq _x_size __x_size)) _x_size)
  (:y_size
   (&optional __y_size)
   (if __y_size (setq _y_size __y_size)) _y_size)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _x_size
    4
    ;; uint32 _y_size
    4
    ;; calibration_msgs/Point2D[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _x_size
       (write-long _x_size s)
     ;; uint32 _y_size
       (write-long _y_size s)
     ;; calibration_msgs/Point2D[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _x_size
     (setq _x_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _y_size
     (setq _y_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; calibration_msgs/Point2D[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance calibration_msgs::Point2D :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get calibration_msgs::Point2DArray :md5sum-) "c6fc044ee7e4eb74354c64672ac779e7")
(setf (get calibration_msgs::Point2DArray :datatype-) "calibration_msgs/Point2DArray")
(setf (get calibration_msgs::Point2DArray :definition-)
      "Header header

uint32 x_size
uint32 y_size
calibration_msgs/Point2D[] points

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
MSG: calibration_msgs/Point2D
float64 x
float64 y

")



(provide :calibration_msgs/Point2DArray "c6fc044ee7e4eb74354c64672ac779e7")


