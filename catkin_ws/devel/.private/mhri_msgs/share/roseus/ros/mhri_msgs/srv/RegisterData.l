;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::RegisterData)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'RegisterData (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::REGISTERDATA")
  (make-package "MHRI_MSGS::REGISTERDATA"))
(unless (find-package "MHRI_MSGS::REGISTERDATAREQUEST")
  (make-package "MHRI_MSGS::REGISTERDATAREQUEST"))
(unless (find-package "MHRI_MSGS::REGISTERDATARESPONSE")
  (make-package "MHRI_MSGS::REGISTERDATARESPONSE"))

(in-package "ROS")





(defclass mhri_msgs::RegisterDataRequest
  :super ros::object
  :slots (_perception_name _data ))

(defmethod mhri_msgs::RegisterDataRequest
  (:init
   (&key
    ((:perception_name __perception_name) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _perception_name (string __perception_name))
   (setq _data (string __data))
   self)
  (:perception_name
   (&optional __perception_name)
   (if __perception_name (setq _perception_name __perception_name)) _perception_name)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _perception_name
    4 (length _perception_name)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _perception_name
       (write-long (length _perception_name) s) (princ _perception_name s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _perception_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _perception_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mhri_msgs::RegisterDataResponse
  :super ros::object
  :slots (_result ))

(defmethod mhri_msgs::RegisterDataResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mhri_msgs::RegisterData
  :super ros::object
  :slots ())

(setf (get mhri_msgs::RegisterData :md5sum-) "85ca8cb48d3151ee2dbe18431e655105")
(setf (get mhri_msgs::RegisterData :datatype-) "mhri_msgs/RegisterData")
(setf (get mhri_msgs::RegisterData :request) mhri_msgs::RegisterDataRequest)
(setf (get mhri_msgs::RegisterData :response) mhri_msgs::RegisterDataResponse)

(defmethod mhri_msgs::RegisterDataRequest
  (:response () (instance mhri_msgs::RegisterDataResponse :init)))

(setf (get mhri_msgs::RegisterDataRequest :md5sum-) "85ca8cb48d3151ee2dbe18431e655105")
(setf (get mhri_msgs::RegisterDataRequest :datatype-) "mhri_msgs/RegisterDataRequest")
(setf (get mhri_msgs::RegisterDataRequest :definition-)
      "string perception_name
string data
---
bool result

")

(setf (get mhri_msgs::RegisterDataResponse :md5sum-) "85ca8cb48d3151ee2dbe18431e655105")
(setf (get mhri_msgs::RegisterDataResponse :datatype-) "mhri_msgs/RegisterDataResponse")
(setf (get mhri_msgs::RegisterDataResponse :definition-)
      "string perception_name
string data
---
bool result

")



(provide :mhri_msgs/RegisterData "85ca8cb48d3151ee2dbe18431e655105")


