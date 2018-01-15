;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::Polynomial)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'Polynomial (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::POLYNOMIAL")
  (make-package "CALIBRATION_MSGS::POLYNOMIAL"))

(in-package "ROS")
;;//! \htmlinclude Polynomial.msg.html


(defclass calibration_msgs::Polynomial
  :super ros::object
  :slots (_max_degree _min_degree _coefficients ))

(defmethod calibration_msgs::Polynomial
  (:init
   (&key
    ((:max_degree __max_degree) 0)
    ((:min_degree __min_degree) 0)
    ((:coefficients __coefficients) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _max_degree (round __max_degree))
   (setq _min_degree (round __min_degree))
   (setq _coefficients __coefficients)
   self)
  (:max_degree
   (&optional __max_degree)
   (if __max_degree (setq _max_degree __max_degree)) _max_degree)
  (:min_degree
   (&optional __min_degree)
   (if __min_degree (setq _min_degree __min_degree)) _min_degree)
  (:coefficients
   (&optional __coefficients)
   (if __coefficients (setq _coefficients __coefficients)) _coefficients)
  (:serialization-length
   ()
   (+
    ;; int32 _max_degree
    4
    ;; int32 _min_degree
    4
    ;; float64[] _coefficients
    (* 8    (length _coefficients)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _max_degree
       (write-long _max_degree s)
     ;; int32 _min_degree
       (write-long _min_degree s)
     ;; float64[] _coefficients
     (write-long (length _coefficients) s)
     (dotimes (i (length _coefficients))
       (sys::poke (elt _coefficients i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _max_degree
     (setq _max_degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _min_degree
     (setq _min_degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _coefficients
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coefficients (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coefficients i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get calibration_msgs::Polynomial :md5sum-) "2bf430c82e35b84262e2b764637662e7")
(setf (get calibration_msgs::Polynomial :datatype-) "calibration_msgs/Polynomial")
(setf (get calibration_msgs::Polynomial :definition-)
      "int32 max_degree
int32 min_degree
float64[] coefficients

")



(provide :calibration_msgs/Polynomial "2bf430c82e35b84262e2b764637662e7")


