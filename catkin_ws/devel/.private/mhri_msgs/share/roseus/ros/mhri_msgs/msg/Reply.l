;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::Reply)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'Reply (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::REPLY")
  (make-package "MHRI_MSGS::REPLY"))

(in-package "ROS")
;;//! \htmlinclude Reply.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mhri_msgs::Reply
  :super ros::object
  :slots (_header _reply ))

(defmethod mhri_msgs::Reply
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:reply __reply) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _reply (string __reply))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:reply
   (&optional __reply)
   (if __reply (setq _reply __reply)) _reply)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _reply
    4 (length _reply)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _reply
       (write-long (length _reply) s) (princ _reply s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _reply
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reply (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mhri_msgs::Reply :md5sum-) "0d89ade7e9c9b2f363a6fc8a9ab3750c")
(setf (get mhri_msgs::Reply :datatype-) "mhri_msgs/Reply")
(setf (get mhri_msgs::Reply :definition-)
      "Header header
string reply

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



(provide :mhri_msgs/Reply "0d89ade7e9c9b2f363a6fc8a9ab3750c")


