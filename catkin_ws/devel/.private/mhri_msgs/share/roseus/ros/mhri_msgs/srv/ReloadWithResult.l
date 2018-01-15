;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::ReloadWithResult)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'ReloadWithResult (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::RELOADWITHRESULT")
  (make-package "MHRI_MSGS::RELOADWITHRESULT"))
(unless (find-package "MHRI_MSGS::RELOADWITHRESULTREQUEST")
  (make-package "MHRI_MSGS::RELOADWITHRESULTREQUEST"))
(unless (find-package "MHRI_MSGS::RELOADWITHRESULTRESPONSE")
  (make-package "MHRI_MSGS::RELOADWITHRESULTRESPONSE"))

(in-package "ROS")





(defclass mhri_msgs::ReloadWithResultRequest
  :super ros::object
  :slots (_script_path ))

(defmethod mhri_msgs::ReloadWithResultRequest
  (:init
   (&key
    ((:script_path __script_path) "")
    )
   (send-super :init)
   (setq _script_path (string __script_path))
   self)
  (:script_path
   (&optional __script_path)
   (if __script_path (setq _script_path __script_path)) _script_path)
  (:serialization-length
   ()
   (+
    ;; string _script_path
    4 (length _script_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _script_path
       (write-long (length _script_path) s) (princ _script_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _script_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _script_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mhri_msgs::ReloadWithResultResponse
  :super ros::object
  :slots (_result ))

(defmethod mhri_msgs::ReloadWithResultResponse
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

(defclass mhri_msgs::ReloadWithResult
  :super ros::object
  :slots ())

(setf (get mhri_msgs::ReloadWithResult :md5sum-) "433949ba24a221b6192129df3d830876")
(setf (get mhri_msgs::ReloadWithResult :datatype-) "mhri_msgs/ReloadWithResult")
(setf (get mhri_msgs::ReloadWithResult :request) mhri_msgs::ReloadWithResultRequest)
(setf (get mhri_msgs::ReloadWithResult :response) mhri_msgs::ReloadWithResultResponse)

(defmethod mhri_msgs::ReloadWithResultRequest
  (:response () (instance mhri_msgs::ReloadWithResultResponse :init)))

(setf (get mhri_msgs::ReloadWithResultRequest :md5sum-) "433949ba24a221b6192129df3d830876")
(setf (get mhri_msgs::ReloadWithResultRequest :datatype-) "mhri_msgs/ReloadWithResultRequest")
(setf (get mhri_msgs::ReloadWithResultRequest :definition-)
      "string script_path
---
bool result

")

(setf (get mhri_msgs::ReloadWithResultResponse :md5sum-) "433949ba24a221b6192129df3d830876")
(setf (get mhri_msgs::ReloadWithResultResponse :datatype-) "mhri_msgs/ReloadWithResultResponse")
(setf (get mhri_msgs::ReloadWithResultResponse :definition-)
      "string script_path
---
bool result

")



(provide :mhri_msgs/ReloadWithResult "433949ba24a221b6192129df3d830876")


