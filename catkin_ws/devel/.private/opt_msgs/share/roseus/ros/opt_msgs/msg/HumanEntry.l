;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::HumanEntry)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'HumanEntry (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::HUMANENTRY")
  (make-package "OPT_MSGS::HUMANENTRY"))

(in-package "ROS")
;;//! \htmlinclude HumanEntry.msg.html


(defclass opt_msgs::HumanEntry
  :super ros::object
  :slots (_stamp _personID _personCentroidX _personCentroidY _personCentroidZ _personBoundingBoxTopCenterX _personBoundingBoxTopCenterY _personBoundingBoxTopCenterZ _Xvelocity _Yvelocity _Zvelocity _ROIwidth _ROIheight _Xsigma _Ysigma _Zsigma ))

(defmethod opt_msgs::HumanEntry
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:personID __personID) 0)
    ((:personCentroidX __personCentroidX) 0.0)
    ((:personCentroidY __personCentroidY) 0.0)
    ((:personCentroidZ __personCentroidZ) 0.0)
    ((:personBoundingBoxTopCenterX __personBoundingBoxTopCenterX) 0.0)
    ((:personBoundingBoxTopCenterY __personBoundingBoxTopCenterY) 0.0)
    ((:personBoundingBoxTopCenterZ __personBoundingBoxTopCenterZ) 0.0)
    ((:Xvelocity __Xvelocity) 0.0)
    ((:Yvelocity __Yvelocity) 0.0)
    ((:Zvelocity __Zvelocity) 0.0)
    ((:ROIwidth __ROIwidth) 0.0)
    ((:ROIheight __ROIheight) 0.0)
    ((:Xsigma __Xsigma) 0.0)
    ((:Ysigma __Ysigma) 0.0)
    ((:Zsigma __Zsigma) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _personID (round __personID))
   (setq _personCentroidX (float __personCentroidX))
   (setq _personCentroidY (float __personCentroidY))
   (setq _personCentroidZ (float __personCentroidZ))
   (setq _personBoundingBoxTopCenterX (float __personBoundingBoxTopCenterX))
   (setq _personBoundingBoxTopCenterY (float __personBoundingBoxTopCenterY))
   (setq _personBoundingBoxTopCenterZ (float __personBoundingBoxTopCenterZ))
   (setq _Xvelocity (float __Xvelocity))
   (setq _Yvelocity (float __Yvelocity))
   (setq _Zvelocity (float __Zvelocity))
   (setq _ROIwidth (float __ROIwidth))
   (setq _ROIheight (float __ROIheight))
   (setq _Xsigma (float __Xsigma))
   (setq _Ysigma (float __Ysigma))
   (setq _Zsigma (float __Zsigma))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:personID
   (&optional __personID)
   (if __personID (setq _personID __personID)) _personID)
  (:personCentroidX
   (&optional __personCentroidX)
   (if __personCentroidX (setq _personCentroidX __personCentroidX)) _personCentroidX)
  (:personCentroidY
   (&optional __personCentroidY)
   (if __personCentroidY (setq _personCentroidY __personCentroidY)) _personCentroidY)
  (:personCentroidZ
   (&optional __personCentroidZ)
   (if __personCentroidZ (setq _personCentroidZ __personCentroidZ)) _personCentroidZ)
  (:personBoundingBoxTopCenterX
   (&optional __personBoundingBoxTopCenterX)
   (if __personBoundingBoxTopCenterX (setq _personBoundingBoxTopCenterX __personBoundingBoxTopCenterX)) _personBoundingBoxTopCenterX)
  (:personBoundingBoxTopCenterY
   (&optional __personBoundingBoxTopCenterY)
   (if __personBoundingBoxTopCenterY (setq _personBoundingBoxTopCenterY __personBoundingBoxTopCenterY)) _personBoundingBoxTopCenterY)
  (:personBoundingBoxTopCenterZ
   (&optional __personBoundingBoxTopCenterZ)
   (if __personBoundingBoxTopCenterZ (setq _personBoundingBoxTopCenterZ __personBoundingBoxTopCenterZ)) _personBoundingBoxTopCenterZ)
  (:Xvelocity
   (&optional __Xvelocity)
   (if __Xvelocity (setq _Xvelocity __Xvelocity)) _Xvelocity)
  (:Yvelocity
   (&optional __Yvelocity)
   (if __Yvelocity (setq _Yvelocity __Yvelocity)) _Yvelocity)
  (:Zvelocity
   (&optional __Zvelocity)
   (if __Zvelocity (setq _Zvelocity __Zvelocity)) _Zvelocity)
  (:ROIwidth
   (&optional __ROIwidth)
   (if __ROIwidth (setq _ROIwidth __ROIwidth)) _ROIwidth)
  (:ROIheight
   (&optional __ROIheight)
   (if __ROIheight (setq _ROIheight __ROIheight)) _ROIheight)
  (:Xsigma
   (&optional __Xsigma)
   (if __Xsigma (setq _Xsigma __Xsigma)) _Xsigma)
  (:Ysigma
   (&optional __Ysigma)
   (if __Ysigma (setq _Ysigma __Ysigma)) _Ysigma)
  (:Zsigma
   (&optional __Zsigma)
   (if __Zsigma (setq _Zsigma __Zsigma)) _Zsigma)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint64 _personID
    8
    ;; float64 _personCentroidX
    8
    ;; float64 _personCentroidY
    8
    ;; float64 _personCentroidZ
    8
    ;; float64 _personBoundingBoxTopCenterX
    8
    ;; float64 _personBoundingBoxTopCenterY
    8
    ;; float64 _personBoundingBoxTopCenterZ
    8
    ;; float64 _Xvelocity
    8
    ;; float64 _Yvelocity
    8
    ;; float64 _Zvelocity
    8
    ;; float64 _ROIwidth
    8
    ;; float64 _ROIheight
    8
    ;; float64 _Xsigma
    8
    ;; float64 _Ysigma
    8
    ;; float64 _Zsigma
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint64 _personID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _personID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _personID) (= (length (_personID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_personID . bv) 0) 0) s)
              (write-long (ash (elt (_personID . bv) 1) -1) s))
             ((and (class _personID) (= (length (_personID . bv)) 1)) ;; big1
              (write-long (elt (_personID . bv) 0) s)
              (write-long (if (>= _personID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _personID s)(write-long (if (>= _personID 0) 0 #xffffffff) s)))
     ;; float64 _personCentroidX
       (sys::poke _personCentroidX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _personCentroidY
       (sys::poke _personCentroidY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _personCentroidZ
       (sys::poke _personCentroidZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _personBoundingBoxTopCenterX
       (sys::poke _personBoundingBoxTopCenterX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _personBoundingBoxTopCenterY
       (sys::poke _personBoundingBoxTopCenterY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _personBoundingBoxTopCenterZ
       (sys::poke _personBoundingBoxTopCenterZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Xvelocity
       (sys::poke _Xvelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Yvelocity
       (sys::poke _Yvelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Zvelocity
       (sys::poke _Zvelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ROIwidth
       (sys::poke _ROIwidth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ROIheight
       (sys::poke _ROIheight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Xsigma
       (sys::poke _Xsigma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Ysigma
       (sys::poke _Ysigma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Zsigma
       (sys::poke _Zsigma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _personID
     
#+(or :alpha :irix6 :x86_64)
      (setf _personID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _personID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _personCentroidX
     (setq _personCentroidX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _personCentroidY
     (setq _personCentroidY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _personCentroidZ
     (setq _personCentroidZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _personBoundingBoxTopCenterX
     (setq _personBoundingBoxTopCenterX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _personBoundingBoxTopCenterY
     (setq _personBoundingBoxTopCenterY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _personBoundingBoxTopCenterZ
     (setq _personBoundingBoxTopCenterZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Xvelocity
     (setq _Xvelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Yvelocity
     (setq _Yvelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Zvelocity
     (setq _Zvelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ROIwidth
     (setq _ROIwidth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ROIheight
     (setq _ROIheight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Xsigma
     (setq _Xsigma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Ysigma
     (setq _Ysigma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Zsigma
     (setq _Zsigma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get opt_msgs::HumanEntry :md5sum-) "62ab54a7d1e278036ce98ff633f1bef9")
(setf (get opt_msgs::HumanEntry :datatype-) "opt_msgs/HumanEntry")
(setf (get opt_msgs::HumanEntry :definition-)
      "time stamp
uint64 personID
float64 personCentroidX
float64 personCentroidY
float64 personCentroidZ
float64 personBoundingBoxTopCenterX
float64 personBoundingBoxTopCenterY
float64 personBoundingBoxTopCenterZ
float64 Xvelocity
float64 Yvelocity
float64 Zvelocity
float64 ROIwidth
float64 ROIheight
float64 Xsigma
float64 Ysigma
float64 Zsigma

")



(provide :opt_msgs/HumanEntry "62ab54a7d1e278036ce98ff633f1bef9")


