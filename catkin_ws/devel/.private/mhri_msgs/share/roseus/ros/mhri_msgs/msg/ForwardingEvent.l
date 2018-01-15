;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::ForwardingEvent)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'ForwardingEvent (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::FORWARDINGEVENT")
  (make-package "MHRI_MSGS::FORWARDINGEVENT"))

(in-package "ROS")
;;//! \htmlinclude ForwardingEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mhri_msgs::ForwardingEvent
  :super ros::object
  :slots (_header _event _by ))

(defmethod mhri_msgs::ForwardingEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:event __event) "")
    ((:by __by) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _event (string __event))
   (setq _by (string __by))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:by
   (&optional __by)
   (if __by (setq _by __by)) _by)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _event
    4 (length _event)
    ;; string _by
    4 (length _by)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _event
       (write-long (length _event) s) (princ _event s)
     ;; string _by
       (write-long (length _by) s) (princ _by s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _event
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _event (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _by
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _by (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mhri_msgs::ForwardingEvent :md5sum-) "76aa3c5d305a1516168ca9a399afd13e")
(setf (get mhri_msgs::ForwardingEvent :datatype-) "mhri_msgs/ForwardingEvent")
(setf (get mhri_msgs::ForwardingEvent :definition-)
      "Header header
string event
string by

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



(provide :mhri_msgs/ForwardingEvent "76aa3c5d305a1516168ca9a399afd13e")


