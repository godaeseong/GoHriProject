;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::OPTTransform)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'OPTTransform (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::OPTTRANSFORM")
  (make-package "OPT_MSGS::OPTTRANSFORM"))
(unless (find-package "OPT_MSGS::OPTTRANSFORMREQUEST")
  (make-package "OPT_MSGS::OPTTRANSFORMREQUEST"))
(unless (find-package "OPT_MSGS::OPTTRANSFORMRESPONSE")
  (make-package "OPT_MSGS::OPTTRANSFORMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass opt_msgs::OPTTransformRequest
  :super ros::object
  :slots (_calibration_id _parent_id _child_id _transform ))

(defmethod opt_msgs::OPTTransformRequest
  (:init
   (&key
    ((:calibration_id __calibration_id) 0)
    ((:parent_id __parent_id) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:child_id __child_id) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:transform __transform) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Transform :init) r)) r))
    )
   (send-super :init)
   (setq _calibration_id (round __calibration_id))
   (setq _parent_id __parent_id)
   (setq _child_id __child_id)
   (setq _transform __transform)
   self)
  (:calibration_id
   (&optional __calibration_id)
   (if __calibration_id (setq _calibration_id __calibration_id)) _calibration_id)
  (:parent_id
   (&optional __parent_id)
   (if __parent_id (setq _parent_id __parent_id)) _parent_id)
  (:child_id
   (&optional __child_id)
   (if __child_id (setq _child_id __child_id)) _child_id)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; uint64 _calibration_id
    8
    ;; string[] _parent_id
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _parent_id)) 4
    ;; string[] _child_id
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _child_id)) 4
    ;; geometry_msgs/Transform[] _transform
    (apply #'+ (send-all _transform :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _calibration_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _calibration_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _calibration_id) (= (length (_calibration_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_calibration_id . bv) 0) 0) s)
              (write-long (ash (elt (_calibration_id . bv) 1) -1) s))
             ((and (class _calibration_id) (= (length (_calibration_id . bv)) 1)) ;; big1
              (write-long (elt (_calibration_id . bv) 0) s)
              (write-long (if (>= _calibration_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _calibration_id s)(write-long (if (>= _calibration_id 0) 0 #xffffffff) s)))
     ;; string[] _parent_id
     (write-long (length _parent_id) s)
     (dolist (elem _parent_id)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _child_id
     (write-long (length _child_id) s)
     (dolist (elem _child_id)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Transform[] _transform
     (write-long (length _transform) s)
     (dolist (elem _transform)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _calibration_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _calibration_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _calibration_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string[] _parent_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parent_id (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _parent_id i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _child_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _child_id (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _child_id i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Transform[] _transform
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transform (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _transform)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(intern "*STATUS_OK*" (find-package "OPT_MSGS::OPTTRANSFORMRESPONSE"))
(shadow '*STATUS_OK* (find-package "OPT_MSGS::OPTTRANSFORMRESPONSE"))
(defconstant opt_msgs::OPTTransformResponse::*STATUS_OK* 0)
(intern "*STATUS_ERROR*" (find-package "OPT_MSGS::OPTTRANSFORMRESPONSE"))
(shadow '*STATUS_ERROR* (find-package "OPT_MSGS::OPTTRANSFORMRESPONSE"))
(defconstant opt_msgs::OPTTransformResponse::*STATUS_ERROR* 1)
(defclass opt_msgs::OPTTransformResponse
  :super ros::object
  :slots (_status _message ))

(defmethod opt_msgs::OPTTransformResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass opt_msgs::OPTTransform
  :super ros::object
  :slots ())

(setf (get opt_msgs::OPTTransform :md5sum-) "c280824f01567ccd998b38545c5bda8d")
(setf (get opt_msgs::OPTTransform :datatype-) "opt_msgs/OPTTransform")
(setf (get opt_msgs::OPTTransform :request) opt_msgs::OPTTransformRequest)
(setf (get opt_msgs::OPTTransform :response) opt_msgs::OPTTransformResponse)

(defmethod opt_msgs::OPTTransformRequest
  (:response () (instance opt_msgs::OPTTransformResponse :init)))

(setf (get opt_msgs::OPTTransformRequest :md5sum-) "c280824f01567ccd998b38545c5bda8d")
(setf (get opt_msgs::OPTTransformRequest :datatype-) "opt_msgs/OPTTransformRequest")
(setf (get opt_msgs::OPTTransformRequest :definition-)
      "uint64 calibration_id

string[]                  parent_id
string[]                  child_id
geometry_msgs/Transform[] transform


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
---

uint8 STATUS_OK=0
uint8 STATUS_ERROR=1

uint8  status
string message

")

(setf (get opt_msgs::OPTTransformResponse :md5sum-) "c280824f01567ccd998b38545c5bda8d")
(setf (get opt_msgs::OPTTransformResponse :datatype-) "opt_msgs/OPTTransformResponse")
(setf (get opt_msgs::OPTTransformResponse :definition-)
      "uint64 calibration_id

string[]                  parent_id
string[]                  child_id
geometry_msgs/Transform[] transform


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
---

uint8 STATUS_OK=0
uint8 STATUS_ERROR=1

uint8  status
string message

")



(provide :opt_msgs/OPTTransform "c280824f01567ccd998b38545c5bda8d")


