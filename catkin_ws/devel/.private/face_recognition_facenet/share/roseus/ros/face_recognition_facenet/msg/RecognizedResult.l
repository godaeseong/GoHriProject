;; Auto-generated. Do not edit!


(when (boundp 'face_recognition_facenet::RecognizedResult)
  (if (not (find-package "FACE_RECOGNITION_FACENET"))
    (make-package "FACE_RECOGNITION_FACENET"))
  (shadow 'RecognizedResult (find-package "FACE_RECOGNITION_FACENET")))
(unless (find-package "FACE_RECOGNITION_FACENET::RECOGNIZEDRESULT")
  (make-package "FACE_RECOGNITION_FACENET::RECOGNIZEDRESULT"))

(in-package "ROS")
;;//! \htmlinclude RecognizedResult.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass face_recognition_facenet::RecognizedResult
  :super ros::object
  :slots (_name _confidence _position ))

(defmethod face_recognition_facenet::RecognizedResult
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:confidence __confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PointStamped :init) r)) r))
    )
   (send-super :init)
   (setq _name __name)
   (setq _confidence __confidence)
   (setq _position __position)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _confidence
    (* 8    (length _confidence)) 4
    ;; geometry_msgs/PointStamped[] _position
    (apply #'+ (send-all _position :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _confidence
     (write-long (length _confidence) s)
     (dotimes (i (length _confidence))
       (sys::poke (elt _confidence i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/PointStamped[] _position
     (write-long (length _position) s)
     (dolist (elem _position)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _confidence i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/PointStamped[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (let (r) (dotimes (i n) (push (instance geometry_msgs::PointStamped :init) r)) r))
     (dolist (elem- _position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get face_recognition_facenet::RecognizedResult :md5sum-) "1ccf0ba3315bc6eb07115c591b599d8b")
(setf (get face_recognition_facenet::RecognizedResult :datatype-) "face_recognition_facenet/RecognizedResult")
(setf (get face_recognition_facenet::RecognizedResult :definition-)
      "string[] name
float64[] confidence
geometry_msgs/PointStamped[] position

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :face_recognition_facenet/RecognizedResult "1ccf0ba3315bc6eb07115c591b599d8b")


