;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::WriteData)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'WriteData (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::WRITEDATA")
  (make-package "MHRI_MSGS::WRITEDATA"))
(unless (find-package "MHRI_MSGS::WRITEDATAREQUEST")
  (make-package "MHRI_MSGS::WRITEDATAREQUEST"))
(unless (find-package "MHRI_MSGS::WRITEDATARESPONSE")
  (make-package "MHRI_MSGS::WRITEDATARESPONSE"))

(in-package "ROS")





(defclass mhri_msgs::WriteDataRequest
  :super ros::object
  :slots (_perception_name _data _by ))

(defmethod mhri_msgs::WriteDataRequest
  (:init
   (&key
    ((:perception_name __perception_name) "")
    ((:data __data) "")
    ((:by __by) "")
    )
   (send-super :init)
   (setq _perception_name (string __perception_name))
   (setq _data (string __data))
   (setq _by (string __by))
   self)
  (:perception_name
   (&optional __perception_name)
   (if __perception_name (setq _perception_name __perception_name)) _perception_name)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:by
   (&optional __by)
   (if __by (setq _by __by)) _by)
  (:serialization-length
   ()
   (+
    ;; string _perception_name
    4 (length _perception_name)
    ;; string _data
    4 (length _data)
    ;; string _by
    4 (length _by)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _perception_name
       (write-long (length _perception_name) s) (princ _perception_name s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; string _by
       (write-long (length _by) s) (princ _by s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _perception_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _perception_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _by
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _by (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mhri_msgs::WriteDataResponse
  :super ros::object
  :slots (_result ))

(defmethod mhri_msgs::WriteDataResponse
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

(defclass mhri_msgs::WriteData
  :super ros::object
  :slots ())

(setf (get mhri_msgs::WriteData :md5sum-) "4296fcf55efa7b57ddad66edc397b06f")
(setf (get mhri_msgs::WriteData :datatype-) "mhri_msgs/WriteData")
(setf (get mhri_msgs::WriteData :request) mhri_msgs::WriteDataRequest)
(setf (get mhri_msgs::WriteData :response) mhri_msgs::WriteDataResponse)

(defmethod mhri_msgs::WriteDataRequest
  (:response () (instance mhri_msgs::WriteDataResponse :init)))

(setf (get mhri_msgs::WriteDataRequest :md5sum-) "4296fcf55efa7b57ddad66edc397b06f")
(setf (get mhri_msgs::WriteDataRequest :datatype-) "mhri_msgs/WriteDataRequest")
(setf (get mhri_msgs::WriteDataRequest :definition-)
      "string perception_name
string data
string by
---
bool result

")

(setf (get mhri_msgs::WriteDataResponse :md5sum-) "4296fcf55efa7b57ddad66edc397b06f")
(setf (get mhri_msgs::WriteDataResponse :datatype-) "mhri_msgs/WriteDataResponse")
(setf (get mhri_msgs::WriteDataResponse :definition-)
      "string perception_name
string data
string by
---
bool result

")



(provide :mhri_msgs/WriteData "4296fcf55efa7b57ddad66edc397b06f")


