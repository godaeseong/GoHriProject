;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::IDArray)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'IDArray (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::IDARRAY")
  (make-package "OPT_MSGS::IDARRAY"))

(in-package "ROS")
;;//! \htmlinclude IDArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opt_msgs::IDArray
  :super ros::object
  :slots (_header _max_ID _ids ))

(defmethod opt_msgs::IDArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:max_ID __max_ID) 0)
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _max_ID (round __max_ID))
   (setq _ids __ids)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:max_ID
   (&optional __max_ID)
   (if __max_ID (setq _max_ID __max_ID)) _max_ID)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _max_ID
    4
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _max_ID
       (write-long _max_ID s)
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _max_ID
     (setq _max_ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get opt_msgs::IDArray :md5sum-) "6350c31418d1b806fefd5d37eea32352")
(setf (get opt_msgs::IDArray :datatype-) "opt_msgs/IDArray")
(setf (get opt_msgs::IDArray :definition-)
      "Header header
int32 max_ID
int32[] ids

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



(provide :opt_msgs/IDArray "6350c31418d1b806fefd5d37eea32352")


