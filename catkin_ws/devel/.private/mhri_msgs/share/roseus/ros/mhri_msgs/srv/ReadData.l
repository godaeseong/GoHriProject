;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::ReadData)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'ReadData (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::READDATA")
  (make-package "MHRI_MSGS::READDATA"))
(unless (find-package "MHRI_MSGS::READDATAREQUEST")
  (make-package "MHRI_MSGS::READDATAREQUEST"))
(unless (find-package "MHRI_MSGS::READDATARESPONSE")
  (make-package "MHRI_MSGS::READDATARESPONSE"))

(in-package "ROS")





(defclass mhri_msgs::ReadDataRequest
  :super ros::object
  :slots (_perception_name _query _data ))

(defmethod mhri_msgs::ReadDataRequest
  (:init
   (&key
    ((:perception_name __perception_name) "")
    ((:query __query) "")
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _perception_name (string __perception_name))
   (setq _query (string __query))
   (setq _data __data)
   self)
  (:perception_name
   (&optional __perception_name)
   (if __perception_name (setq _perception_name __perception_name)) _perception_name)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _perception_name
    4 (length _perception_name)
    ;; string _query
    4 (length _query)
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _perception_name
       (write-long (length _perception_name) s) (princ _perception_name s)
     ;; string _query
       (write-long (length _query) s) (princ _query s)
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _perception_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _perception_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass mhri_msgs::ReadDataResponse
  :super ros::object
  :slots (_data _result ))

(defmethod mhri_msgs::ReadDataResponse
  (:init
   (&key
    ((:data __data) "")
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _result __result)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mhri_msgs::ReadData
  :super ros::object
  :slots ())

(setf (get mhri_msgs::ReadData :md5sum-) "34b017cc10a28ec0c610510bd2986363")
(setf (get mhri_msgs::ReadData :datatype-) "mhri_msgs/ReadData")
(setf (get mhri_msgs::ReadData :request) mhri_msgs::ReadDataRequest)
(setf (get mhri_msgs::ReadData :response) mhri_msgs::ReadDataResponse)

(defmethod mhri_msgs::ReadDataRequest
  (:response () (instance mhri_msgs::ReadDataResponse :init)))

(setf (get mhri_msgs::ReadDataRequest :md5sum-) "34b017cc10a28ec0c610510bd2986363")
(setf (get mhri_msgs::ReadDataRequest :datatype-) "mhri_msgs/ReadDataRequest")
(setf (get mhri_msgs::ReadDataRequest :definition-)
      "string perception_name
string query
string[] data
---
string data
bool result

")

(setf (get mhri_msgs::ReadDataResponse :md5sum-) "34b017cc10a28ec0c610510bd2986363")
(setf (get mhri_msgs::ReadDataResponse :datatype-) "mhri_msgs/ReadDataResponse")
(setf (get mhri_msgs::ReadDataResponse :definition-)
      "string perception_name
string query
string[] data
---
string data
bool result

")



(provide :mhri_msgs/ReadData "34b017cc10a28ec0c610510bd2986363")


