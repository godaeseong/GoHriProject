;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::CalibrationPose)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'CalibrationPose (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::CALIBRATIONPOSE")
  (make-package "CALIBRATION_MSGS::CALIBRATIONPOSE"))

(in-package "ROS")
;;//! \htmlinclude CalibrationPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass calibration_msgs::CalibrationPose
  :super ros::object
  :slots (_frame_id _child_frame_id _pose ))

(defmethod calibration_msgs::CalibrationPose
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:child_frame_id __child_frame_id) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _child_frame_id (string __child_frame_id))
   (setq _pose __pose)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get calibration_msgs::CalibrationPose :md5sum-) "54f07abf120bf412d0eaf679e859e412")
(setf (get calibration_msgs::CalibrationPose :datatype-) "calibration_msgs/CalibrationPose")
(setf (get calibration_msgs::CalibrationPose :definition-)
      "string    frame_id

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



(provide :calibration_msgs/CalibrationPose "54f07abf120bf412d0eaf679e859e412")


