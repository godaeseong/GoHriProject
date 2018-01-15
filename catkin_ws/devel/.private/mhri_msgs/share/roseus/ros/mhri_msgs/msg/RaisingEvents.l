;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::RaisingEvents)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'RaisingEvents (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::RAISINGEVENTS")
  (make-package "MHRI_MSGS::RAISINGEVENTS"))

(in-package "ROS")
;;//! \htmlinclude RaisingEvents.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mhri_msgs::RaisingEvents
  :super ros::object
  :slots (_header _recognized_word _events ))

(defmethod mhri_msgs::RaisingEvents
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:recognized_word __recognized_word) "")
    ((:events __events) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _recognized_word (string __recognized_word))
   (setq _events __events)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:recognized_word
   (&optional __recognized_word)
   (if __recognized_word (setq _recognized_word __recognized_word)) _recognized_word)
  (:events
   (&optional __events)
   (if __events (setq _events __events)) _events)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _recognized_word
    4 (length _recognized_word)
    ;; string[] _events
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _events)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _recognized_word
       (write-long (length _recognized_word) s) (princ _recognized_word s)
     ;; string[] _events
     (write-long (length _events) s)
     (dolist (elem _events)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _recognized_word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _recognized_word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _events
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _events (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _events i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get mhri_msgs::RaisingEvents :md5sum-) "21294b98115b190cccece43cfee200e4")
(setf (get mhri_msgs::RaisingEvents :datatype-) "mhri_msgs/RaisingEvents")
(setf (get mhri_msgs::RaisingEvents :definition-)
      "Header header
string recognized_word
string[] events

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



(provide :mhri_msgs/RaisingEvents "21294b98115b190cccece43cfee200e4")


