;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::LogItem)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'LogItem (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::LOGITEM")
  (make-package "MHRI_MSGS::LOGITEM"))

(in-package "ROS")
;;//! \htmlinclude LogItem.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mhri_msgs::LogItem
  :super ros::object
  :slots (_header _log_items ))

(defmethod mhri_msgs::LogItem
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:log_items __log_items) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _log_items __log_items)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:log_items
   (&optional __log_items)
   (if __log_items (setq _log_items __log_items)) _log_items)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _log_items
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _log_items)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _log_items
     (write-long (length _log_items) s)
     (dolist (elem _log_items)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _log_items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _log_items (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _log_items i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get mhri_msgs::LogItem :md5sum-) "aaf48b26b23ff34c15cbd2fbf907723f")
(setf (get mhri_msgs::LogItem :datatype-) "mhri_msgs/LogItem")
(setf (get mhri_msgs::LogItem :definition-)
      "Header header
string[] log_items

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

")



(provide :mhri_msgs/LogItem "aaf48b26b23ff34c15cbd2fbf907723f")


