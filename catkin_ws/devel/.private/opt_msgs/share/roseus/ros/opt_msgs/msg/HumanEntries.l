;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::HumanEntries)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'HumanEntries (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::HUMANENTRIES")
  (make-package "OPT_MSGS::HUMANENTRIES"))

(in-package "ROS")
;;//! \htmlinclude HumanEntries.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opt_msgs::HumanEntries
  :super ros::object
  :slots (_header _entries ))

(defmethod opt_msgs::HumanEntries
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:entries __entries) (let (r) (dotimes (i 0) (push (instance opt_msgs::HumanEntry :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _entries __entries)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:entries
   (&rest __entries)
   (if (keywordp (car __entries))
       (send* _entries __entries)
     (progn
       (if __entries (setq _entries (car __entries)))
       _entries)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opt_msgs/HumanEntry[] _entries
    (apply #'+ (send-all _entries :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opt_msgs/HumanEntry[] _entries
     (write-long (length _entries) s)
     (dolist (elem _entries)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opt_msgs/HumanEntry[] _entries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _entries (let (r) (dotimes (i n) (push (instance opt_msgs::HumanEntry :init) r)) r))
     (dolist (elem- _entries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get opt_msgs::HumanEntries :md5sum-) "2a8c1a02f72face88523f0a8e72a9f6e")
(setf (get opt_msgs::HumanEntries :datatype-) "opt_msgs/HumanEntries")
(setf (get opt_msgs::HumanEntries :definition-)
      "Header header
HumanEntry[] entries

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
MSG: opt_msgs/HumanEntry
time stamp
uint64 personID
float64 personCentroidX
float64 personCentroidY
float64 personCentroidZ
float64 personBoundingBoxTopCenterX
float64 personBoundingBoxTopCenterY
float64 personBoundingBoxTopCenterZ
float64 Xvelocity
float64 Yvelocity
float64 Zvelocity
float64 ROIwidth
float64 ROIheight
float64 Xsigma
float64 Ysigma
float64 Zsigma

")



(provide :opt_msgs/HumanEntries "2a8c1a02f72face88523f0a8e72a9f6e")


