;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::GetCalibrationResults)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'GetCalibrationResults (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::GETCALIBRATIONRESULTS")
  (make-package "CALIBRATION_MSGS::GETCALIBRATIONRESULTS"))
(unless (find-package "CALIBRATION_MSGS::GETCALIBRATIONRESULTSREQUEST")
  (make-package "CALIBRATION_MSGS::GETCALIBRATIONRESULTSREQUEST"))
(unless (find-package "CALIBRATION_MSGS::GETCALIBRATIONRESULTSRESPONSE")
  (make-package "CALIBRATION_MSGS::GETCALIBRATIONRESULTSRESPONSE"))

(in-package "ROS")





(defclass calibration_msgs::GetCalibrationResultsRequest
  :super ros::object
  :slots ())

(defmethod calibration_msgs::GetCalibrationResultsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass calibration_msgs::GetCalibrationResultsResponse
  :super ros::object
  :slots (_poses ))

(defmethod calibration_msgs::GetCalibrationResultsResponse
  (:init
   (&key
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance calibration_msgs::CalibrationPose :init) r)) r))
    )
   (send-super :init)
   (setq _poses __poses)
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; calibration_msgs/CalibrationPose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; calibration_msgs/CalibrationPose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; calibration_msgs/CalibrationPose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance calibration_msgs::CalibrationPose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass calibration_msgs::GetCalibrationResults
  :super ros::object
  :slots ())

(setf (get calibration_msgs::GetCalibrationResults :md5sum-) "0bbbf0e9d4af3cb89da005d0841c9f95")
(setf (get calibration_msgs::GetCalibrationResults :datatype-) "calibration_msgs/GetCalibrationResults")
(setf (get calibration_msgs::GetCalibrationResults :request) calibration_msgs::GetCalibrationResultsRequest)
(setf (get calibration_msgs::GetCalibrationResults :response) calibration_msgs::GetCalibrationResultsResponse)

(defmethod calibration_msgs::GetCalibrationResultsRequest
  (:response () (instance calibration_msgs::GetCalibrationResultsResponse :init)))

(setf (get calibration_msgs::GetCalibrationResultsRequest :md5sum-) "0bbbf0e9d4af3cb89da005d0841c9f95")
(setf (get calibration_msgs::GetCalibrationResultsRequest :datatype-) "calibration_msgs/GetCalibrationResultsRequest")
(setf (get calibration_msgs::GetCalibrationResultsRequest :definition-)
      "

---

calibration_msgs/CalibrationPose[] poses



================================================================================
MSG: calibration_msgs/CalibrationPose
string    frame_id

string    child_frame_id
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get calibration_msgs::GetCalibrationResultsResponse :md5sum-) "0bbbf0e9d4af3cb89da005d0841c9f95")
(setf (get calibration_msgs::GetCalibrationResultsResponse :datatype-) "calibration_msgs/GetCalibrationResultsResponse")
(setf (get calibration_msgs::GetCalibrationResultsResponse :definition-)
      "

---

calibration_msgs/CalibrationPose[] poses



================================================================================
MSG: calibration_msgs/CalibrationPose
string    frame_id

string    child_frame_id
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :calibration_msgs/GetCalibrationResults "0bbbf0e9d4af3cb89da005d0841c9f95")


