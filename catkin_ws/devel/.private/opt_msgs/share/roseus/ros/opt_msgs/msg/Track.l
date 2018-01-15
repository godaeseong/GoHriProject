;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::Track)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'Track (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::TRACK")
  (make-package "OPT_MSGS::TRACK"))

(in-package "ROS")
;;//! \htmlinclude Track.msg.html


(intern "*VISIBLE*" (find-package "OPT_MSGS::TRACK"))
(shadow '*VISIBLE* (find-package "OPT_MSGS::TRACK"))
(defconstant opt_msgs::Track::*VISIBLE* 0)
(intern "*OCCLUDED*" (find-package "OPT_MSGS::TRACK"))
(shadow '*OCCLUDED* (find-package "OPT_MSGS::TRACK"))
(defconstant opt_msgs::Track::*OCCLUDED* 1)
(intern "*NOT_VISIBLE*" (find-package "OPT_MSGS::TRACK"))
(shadow '*NOT_VISIBLE* (find-package "OPT_MSGS::TRACK"))
(defconstant opt_msgs::Track::*NOT_VISIBLE* 2)
(defclass opt_msgs::Track
  :super ros::object
  :slots (_id _x _y _height _distance _age _confidence _visibility _box_2D ))

(defmethod opt_msgs::Track
  (:init
   (&key
    ((:id __id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:height __height) 0.0)
    ((:distance __distance) 0.0)
    ((:age __age) 0.0)
    ((:confidence __confidence) 0.0)
    ((:visibility __visibility) 0)
    ((:box_2D __box_2D) (instance opt_msgs::BoundingBox2D :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _height (float __height))
   (setq _distance (float __distance))
   (setq _age (float __age))
   (setq _confidence (float __confidence))
   (setq _visibility (round __visibility))
   (setq _box_2D __box_2D)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:visibility
   (&optional __visibility)
   (if __visibility (setq _visibility __visibility)) _visibility)
  (:box_2D
   (&rest __box_2D)
   (if (keywordp (car __box_2D))
       (send* _box_2D __box_2D)
     (progn
       (if __box_2D (setq _box_2D (car __box_2D)))
       _box_2D)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _height
    8
    ;; float64 _distance
    8
    ;; float64 _age
    8
    ;; float64 _confidence
    8
    ;; uint8 _visibility
    1
    ;; opt_msgs/BoundingBox2D _box_2D
    (send _box_2D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _age
       (sys::poke _age (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _visibility
       (write-byte _visibility s)
     ;; opt_msgs/BoundingBox2D _box_2D
       (send _box_2D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _age
     (setq _age (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _visibility
     (setq _visibility (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; opt_msgs/BoundingBox2D _box_2D
     (send _box_2D :deserialize buf ptr-) (incf ptr- (send _box_2D :serialization-length))
   ;;
   self)
  )

(setf (get opt_msgs::Track :md5sum-) "991302462c0fa1f63ca966483e3f3c8c")
(setf (get opt_msgs::Track :datatype-) "opt_msgs/Track")
(setf (get opt_msgs::Track :definition-)
      "uint8 VISIBLE = 0
uint8 OCCLUDED = 1
uint8 NOT_VISIBLE = 2

int32 id

float64 x
float64 y
float64 height
float64 distance
float64 age
float64 confidence

uint8 visibility

opt_msgs/BoundingBox2D box_2D


================================================================================
MSG: opt_msgs/BoundingBox2D
int32 x
int32 y
int32 width
int32 height
")



(provide :opt_msgs/Track "991302462c0fa1f63ca966483e3f3c8c")


