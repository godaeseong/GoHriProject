;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::GetDataList)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'GetDataList (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::GETDATALIST")
  (make-package "MHRI_MSGS::GETDATALIST"))
(unless (find-package "MHRI_MSGS::GETDATALISTREQUEST")
  (make-package "MHRI_MSGS::GETDATALISTREQUEST"))
(unless (find-package "MHRI_MSGS::GETDATALISTRESPONSE")
  (make-package "MHRI_MSGS::GETDATALISTRESPONSE"))

(in-package "ROS")





(defclass mhri_msgs::GetDataListRequest
  :super ros::object
  :slots ())

(defmethod mhri_msgs::GetDataListRequest
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

(defclass mhri_msgs::GetDataListResponse
  :super ros::object
  :slots (_result _data_list ))

(defmethod mhri_msgs::GetDataListResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:data_list __data_list) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _data_list (string __data_list))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:data_list
   (&optional __data_list)
   (if __data_list (setq _data_list __data_list)) _data_list)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _data_list
    4 (length _data_list)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _data_list
       (write-long (length _data_list) s) (princ _data_list s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _data_list
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_list (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mhri_msgs::GetDataList
  :super ros::object
  :slots ())

(setf (get mhri_msgs::GetDataList :md5sum-) "63c9cf650edc8e21b44e24626de58676")
(setf (get mhri_msgs::GetDataList :datatype-) "mhri_msgs/GetDataList")
(setf (get mhri_msgs::GetDataList :request) mhri_msgs::GetDataListRequest)
(setf (get mhri_msgs::GetDataList :response) mhri_msgs::GetDataListResponse)

(defmethod mhri_msgs::GetDataListRequest
  (:response () (instance mhri_msgs::GetDataListResponse :init)))

(setf (get mhri_msgs::GetDataListRequest :md5sum-) "63c9cf650edc8e21b44e24626de58676")
(setf (get mhri_msgs::GetDataListRequest :datatype-) "mhri_msgs/GetDataListRequest")
(setf (get mhri_msgs::GetDataListRequest :definition-)
      "---
bool result
string data_list

")

(setf (get mhri_msgs::GetDataListResponse :md5sum-) "63c9cf650edc8e21b44e24626de58676")
(setf (get mhri_msgs::GetDataListResponse :datatype-) "mhri_msgs/GetDataListResponse")
(setf (get mhri_msgs::GetDataListResponse :definition-)
      "---
bool result
string data_list

")



(provide :mhri_msgs/GetDataList "63c9cf650edc8e21b44e24626de58676")


