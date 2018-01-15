;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::GetInstalledGestures)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'GetInstalledGestures (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::GETINSTALLEDGESTURES")
  (make-package "MHRI_MSGS::GETINSTALLEDGESTURES"))
(unless (find-package "MHRI_MSGS::GETINSTALLEDGESTURESREQUEST")
  (make-package "MHRI_MSGS::GETINSTALLEDGESTURESREQUEST"))
(unless (find-package "MHRI_MSGS::GETINSTALLEDGESTURESRESPONSE")
  (make-package "MHRI_MSGS::GETINSTALLEDGESTURESRESPONSE"))

(in-package "ROS")





(defclass mhri_msgs::GetInstalledGesturesRequest
  :super ros::object
  :slots ())

(defmethod mhri_msgs::GetInstalledGesturesRequest
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

(defclass mhri_msgs::GetInstalledGesturesResponse
  :super ros::object
  :slots (_gestures ))

(defmethod mhri_msgs::GetInstalledGesturesResponse
  (:init
   (&key
    ((:gestures __gestures) "")
    )
   (send-super :init)
   (setq _gestures (string __gestures))
   self)
  (:gestures
   (&optional __gestures)
   (if __gestures (setq _gestures __gestures)) _gestures)
  (:serialization-length
   ()
   (+
    ;; string _gestures
    4 (length _gestures)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gestures
       (write-long (length _gestures) s) (princ _gestures s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gestures
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gestures (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mhri_msgs::GetInstalledGestures
  :super ros::object
  :slots ())

(setf (get mhri_msgs::GetInstalledGestures :md5sum-) "5365bf3eb93d84030fba702bd892ff42")
(setf (get mhri_msgs::GetInstalledGestures :datatype-) "mhri_msgs/GetInstalledGestures")
(setf (get mhri_msgs::GetInstalledGestures :request) mhri_msgs::GetInstalledGesturesRequest)
(setf (get mhri_msgs::GetInstalledGestures :response) mhri_msgs::GetInstalledGesturesResponse)

(defmethod mhri_msgs::GetInstalledGesturesRequest
  (:response () (instance mhri_msgs::GetInstalledGesturesResponse :init)))

(setf (get mhri_msgs::GetInstalledGesturesRequest :md5sum-) "5365bf3eb93d84030fba702bd892ff42")
(setf (get mhri_msgs::GetInstalledGesturesRequest :datatype-) "mhri_msgs/GetInstalledGesturesRequest")
(setf (get mhri_msgs::GetInstalledGesturesRequest :definition-)
      "---
string gestures

")

(setf (get mhri_msgs::GetInstalledGesturesResponse :md5sum-) "5365bf3eb93d84030fba702bd892ff42")
(setf (get mhri_msgs::GetInstalledGesturesResponse :datatype-) "mhri_msgs/GetInstalledGesturesResponse")
(setf (get mhri_msgs::GetInstalledGesturesResponse :definition-)
      "---
string gestures

")



(provide :mhri_msgs/GetInstalledGestures "5365bf3eb93d84030fba702bd892ff42")


