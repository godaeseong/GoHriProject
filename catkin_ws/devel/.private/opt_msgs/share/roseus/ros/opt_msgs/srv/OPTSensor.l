;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::OPTSensor)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'OPTSensor (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::OPTSENSOR")
  (make-package "OPT_MSGS::OPTSENSOR"))
(unless (find-package "OPT_MSGS::OPTSENSORREQUEST")
  (make-package "OPT_MSGS::OPTSENSORREQUEST"))
(unless (find-package "OPT_MSGS::OPTSENSORRESPONSE")
  (make-package "OPT_MSGS::OPTSENSORRESPONSE"))

(in-package "ROS")





(intern "*TYPE_NOT_SET*" (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(shadow '*TYPE_NOT_SET* (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(defconstant opt_msgs::OPTSensorRequest::*TYPE_NOT_SET* 0)
(intern "*TYPE_KINECT1*" (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(shadow '*TYPE_KINECT1* (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(defconstant opt_msgs::OPTSensorRequest::*TYPE_KINECT1* 1)
(intern "*TYPE_SR4500*" (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(shadow '*TYPE_SR4500* (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(defconstant opt_msgs::OPTSensorRequest::*TYPE_SR4500* 2)
(intern "*TYPE_STEREO_PG*" (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(shadow '*TYPE_STEREO_PG* (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(defconstant opt_msgs::OPTSensorRequest::*TYPE_STEREO_PG* 3)
(intern "*TYPE_KINECT2*" (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(shadow '*TYPE_KINECT2* (find-package "OPT_MSGS::OPTSENSORREQUEST"))
(defconstant opt_msgs::OPTSensorRequest::*TYPE_KINECT2* 4)
(defclass opt_msgs::OPTSensorRequest
  :super ros::object
  :slots (_session_id _id _type _serial _ip _serial_left _serial_right ))

(defmethod opt_msgs::OPTSensorRequest
  (:init
   (&key
    ((:session_id __session_id) 0)
    ((:id __id) "")
    ((:type __type) 0)
    ((:serial __serial) "")
    ((:ip __ip) "")
    ((:serial_left __serial_left) "")
    ((:serial_right __serial_right) "")
    )
   (send-super :init)
   (setq _session_id (round __session_id))
   (setq _id (string __id))
   (setq _type (round __type))
   (setq _serial (string __serial))
   (setq _ip (string __ip))
   (setq _serial_left (string __serial_left))
   (setq _serial_right (string __serial_right))
   self)
  (:session_id
   (&optional __session_id)
   (if __session_id (setq _session_id __session_id)) _session_id)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serial
   (&optional __serial)
   (if __serial (setq _serial __serial)) _serial)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:serial_left
   (&optional __serial_left)
   (if __serial_left (setq _serial_left __serial_left)) _serial_left)
  (:serial_right
   (&optional __serial_right)
   (if __serial_right (setq _serial_right __serial_right)) _serial_right)
  (:serialization-length
   ()
   (+
    ;; uint64 _session_id
    8
    ;; string _id
    4 (length _id)
    ;; uint8 _type
    1
    ;; string _serial
    4 (length _serial)
    ;; string _ip
    4 (length _ip)
    ;; string _serial_left
    4 (length _serial_left)
    ;; string _serial_right
    4 (length _serial_right)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _session_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _session_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _session_id) (= (length (_session_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_session_id . bv) 0) 0) s)
              (write-long (ash (elt (_session_id . bv) 1) -1) s))
             ((and (class _session_id) (= (length (_session_id . bv)) 1)) ;; big1
              (write-long (elt (_session_id . bv) 0) s)
              (write-long (if (>= _session_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _session_id s)(write-long (if (>= _session_id 0) 0 #xffffffff) s)))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; string _serial
       (write-long (length _serial) s) (princ _serial s)
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; string _serial_left
       (write-long (length _serial_left) s) (princ _serial_left s)
     ;; string _serial_right
       (write-long (length _serial_right) s) (princ _serial_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _session_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _session_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _session_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _serial
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _serial_left
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial_left (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _serial_right
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial_right (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*STATUS_OK*" (find-package "OPT_MSGS::OPTSENSORRESPONSE"))
(shadow '*STATUS_OK* (find-package "OPT_MSGS::OPTSENSORRESPONSE"))
(defconstant opt_msgs::OPTSensorResponse::*STATUS_OK* 0)
(intern "*STATUS_ERROR*" (find-package "OPT_MSGS::OPTSENSORRESPONSE"))
(shadow '*STATUS_ERROR* (find-package "OPT_MSGS::OPTSENSORRESPONSE"))
(defconstant opt_msgs::OPTSensorResponse::*STATUS_ERROR* 1)
(defclass opt_msgs::OPTSensorResponse
  :super ros::object
  :slots (_status _message ))

(defmethod opt_msgs::OPTSensorResponse
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

(defclass opt_msgs::OPTSensor
  :super ros::object
  :slots ())

(setf (get opt_msgs::OPTSensor :md5sum-) "e973e0250323fe20e965914453fb0ff5")
(setf (get opt_msgs::OPTSensor :datatype-) "opt_msgs/OPTSensor")
(setf (get opt_msgs::OPTSensor :request) opt_msgs::OPTSensorRequest)
(setf (get opt_msgs::OPTSensor :response) opt_msgs::OPTSensorResponse)

(defmethod opt_msgs::OPTSensorRequest
  (:response () (instance opt_msgs::OPTSensorResponse :init)))

(setf (get opt_msgs::OPTSensorRequest :md5sum-) "e973e0250323fe20e965914453fb0ff5")
(setf (get opt_msgs::OPTSensorRequest :datatype-) "opt_msgs/OPTSensorRequest")
(setf (get opt_msgs::OPTSensorRequest :definition-)
      "uint8 TYPE_NOT_SET=0
uint8 TYPE_KINECT1=1
uint8 TYPE_SR4500=2
uint8 TYPE_STEREO_PG=3
uint8 TYPE_KINECT2=4

uint64 session_id

string id
uint8  type


string serial


string ip


string serial_left
string serial_right

---

uint8 STATUS_OK=0
uint8 STATUS_ERROR=1

uint8  status
string message

")

(setf (get opt_msgs::OPTSensorResponse :md5sum-) "e973e0250323fe20e965914453fb0ff5")
(setf (get opt_msgs::OPTSensorResponse :datatype-) "opt_msgs/OPTSensorResponse")
(setf (get opt_msgs::OPTSensorResponse :definition-)
      "uint8 TYPE_NOT_SET=0
uint8 TYPE_KINECT1=1
uint8 TYPE_SR4500=2
uint8 TYPE_STEREO_PG=3
uint8 TYPE_KINECT2=4

uint64 session_id

string id
uint8  type


string serial


string ip


string serial_left
string serial_right

---

uint8 STATUS_OK=0
uint8 STATUS_ERROR=1

uint8  status
string message

")



(provide :opt_msgs/OPTSensor "e973e0250323fe20e965914453fb0ff5")


