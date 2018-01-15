;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::CalibrationStatus)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'CalibrationStatus (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::CALIBRATIONSTATUS")
  (make-package "OPT_MSGS::CALIBRATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CalibrationStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opt_msgs::CalibrationStatus
  :super ros::object
  :slots (_header _sensor_ids _images_acquired ))

(defmethod opt_msgs::CalibrationStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_ids __sensor_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:images_acquired __images_acquired) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_ids __sensor_ids)
   (setq _images_acquired __images_acquired)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor_ids
   (&optional __sensor_ids)
   (if __sensor_ids (setq _sensor_ids __sensor_ids)) _sensor_ids)
  (:images_acquired
   (&optional __images_acquired)
   (if __images_acquired (setq _images_acquired __images_acquired)) _images_acquired)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _sensor_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sensor_ids)) 4
    ;; int32[] _images_acquired
    (* 4    (length _images_acquired)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _sensor_ids
     (write-long (length _sensor_ids) s)
     (dolist (elem _sensor_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _images_acquired
     (write-long (length _images_acquired) s)
     (dotimes (i (length _images_acquired))
       (write-long (elt _images_acquired i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _sensor_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensor_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sensor_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _images_acquired
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _images_acquired (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _images_acquired i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get opt_msgs::CalibrationStatus :md5sum-) "6509d68338c010b3bb32d195f9fecfeb")
(setf (get opt_msgs::CalibrationStatus :datatype-) "opt_msgs/CalibrationStatus")
(setf (get opt_msgs::CalibrationStatus :definition-)
      "Header header

string[] sensor_ids
int32[] images_acquired

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



(provide :opt_msgs/CalibrationStatus "6509d68338c010b3bb32d195f9fecfeb")


