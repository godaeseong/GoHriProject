;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::Detection)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'Detection (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::DETECTION")
  (make-package "OPT_MSGS::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude Detection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass opt_msgs::Detection
  :super ros::object
  :slots (_box_3D _box_2D _centroid _bottom _top _height _confidence _distance _occluded ))

(defmethod opt_msgs::Detection
  (:init
   (&key
    ((:box_3D __box_3D) (instance opt_msgs::BoundingBox3D :init))
    ((:box_2D __box_2D) (instance opt_msgs::BoundingBox2D :init))
    ((:centroid __centroid) (instance geometry_msgs::Vector3 :init))
    ((:bottom __bottom) (instance geometry_msgs::Vector3 :init))
    ((:top __top) (instance geometry_msgs::Vector3 :init))
    ((:height __height) 0.0)
    ((:confidence __confidence) 0.0)
    ((:distance __distance) 0.0)
    ((:occluded __occluded) nil)
    )
   (send-super :init)
   (setq _box_3D __box_3D)
   (setq _box_2D __box_2D)
   (setq _centroid __centroid)
   (setq _bottom __bottom)
   (setq _top __top)
   (setq _height (float __height))
   (setq _confidence (float __confidence))
   (setq _distance (float __distance))
   (setq _occluded __occluded)
   self)
  (:box_3D
   (&rest __box_3D)
   (if (keywordp (car __box_3D))
       (send* _box_3D __box_3D)
     (progn
       (if __box_3D (setq _box_3D (car __box_3D)))
       _box_3D)))
  (:box_2D
   (&rest __box_2D)
   (if (keywordp (car __box_2D))
       (send* _box_2D __box_2D)
     (progn
       (if __box_2D (setq _box_2D (car __box_2D)))
       _box_2D)))
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:bottom
   (&rest __bottom)
   (if (keywordp (car __bottom))
       (send* _bottom __bottom)
     (progn
       (if __bottom (setq _bottom (car __bottom)))
       _bottom)))
  (:top
   (&rest __top)
   (if (keywordp (car __top))
       (send* _top __top)
     (progn
       (if __top (setq _top (car __top)))
       _top)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:occluded
   (&optional __occluded)
   (if __occluded (setq _occluded __occluded)) _occluded)
  (:serialization-length
   ()
   (+
    ;; opt_msgs/BoundingBox3D _box_3D
    (send _box_3D :serialization-length)
    ;; opt_msgs/BoundingBox2D _box_2D
    (send _box_2D :serialization-length)
    ;; geometry_msgs/Vector3 _centroid
    (send _centroid :serialization-length)
    ;; geometry_msgs/Vector3 _bottom
    (send _bottom :serialization-length)
    ;; geometry_msgs/Vector3 _top
    (send _top :serialization-length)
    ;; float64 _height
    8
    ;; float64 _confidence
    8
    ;; float64 _distance
    8
    ;; bool _occluded
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; opt_msgs/BoundingBox3D _box_3D
       (send _box_3D :serialize s)
     ;; opt_msgs/BoundingBox2D _box_2D
       (send _box_2D :serialize s)
     ;; geometry_msgs/Vector3 _centroid
       (send _centroid :serialize s)
     ;; geometry_msgs/Vector3 _bottom
       (send _bottom :serialize s)
     ;; geometry_msgs/Vector3 _top
       (send _top :serialize s)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _occluded
       (if _occluded (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; opt_msgs/BoundingBox3D _box_3D
     (send _box_3D :deserialize buf ptr-) (incf ptr- (send _box_3D :serialization-length))
   ;; opt_msgs/BoundingBox2D _box_2D
     (send _box_2D :deserialize buf ptr-) (incf ptr- (send _box_2D :serialization-length))
   ;; geometry_msgs/Vector3 _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;; geometry_msgs/Vector3 _bottom
     (send _bottom :deserialize buf ptr-) (incf ptr- (send _bottom :serialization-length))
   ;; geometry_msgs/Vector3 _top
     (send _top :deserialize buf ptr-) (incf ptr- (send _top :serialization-length))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _occluded
     (setq _occluded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get opt_msgs::Detection :md5sum-) "f8c84b166dcde721bb56a043ef007291")
(setf (get opt_msgs::Detection :datatype-) "opt_msgs/Detection")
(setf (get opt_msgs::Detection :definition-)
      "opt_msgs/BoundingBox3D box_3D
opt_msgs/BoundingBox2D box_2D

geometry_msgs/Vector3 centroid
geometry_msgs/Vector3 bottom
geometry_msgs/Vector3 top

float64 height
float64 confidence
float64 distance
bool occluded

================================================================================
MSG: opt_msgs/BoundingBox3D
geometry_msgs/Vector3 p1
geometry_msgs/Vector3 p2
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
MSG: opt_msgs/BoundingBox2D
int32 x
int32 y
int32 width
int32 height
")



(provide :opt_msgs/Detection "f8c84b166dcde721bb56a043ef007291")


