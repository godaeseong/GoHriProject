;; Auto-generated. Do not edit!


(when (boundp 'opt_msgs::BoundingBox3D)
  (if (not (find-package "OPT_MSGS"))
    (make-package "OPT_MSGS"))
  (shadow 'BoundingBox3D (find-package "OPT_MSGS")))
(unless (find-package "OPT_MSGS::BOUNDINGBOX3D")
  (make-package "OPT_MSGS::BOUNDINGBOX3D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass opt_msgs::BoundingBox3D
  :super ros::object
  :slots (_p1 _p2 ))

(defmethod opt_msgs::BoundingBox3D
  (:init
   (&key
    ((:p1 __p1) (instance geometry_msgs::Vector3 :init))
    ((:p2 __p2) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _p1 __p1)
   (setq _p2 __p2)
   self)
  (:p1
   (&rest __p1)
   (if (keywordp (car __p1))
       (send* _p1 __p1)
     (progn
       (if __p1 (setq _p1 (car __p1)))
       _p1)))
  (:p2
   (&rest __p2)
   (if (keywordp (car __p2))
       (send* _p2 __p2)
     (progn
       (if __p2 (setq _p2 (car __p2)))
       _p2)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _p1
    (send _p1 :serialization-length)
    ;; geometry_msgs/Vector3 _p2
    (send _p2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _p1
       (send _p1 :serialize s)
     ;; geometry_msgs/Vector3 _p2
       (send _p2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _p1
     (send _p1 :deserialize buf ptr-) (incf ptr- (send _p1 :serialization-length))
   ;; geometry_msgs/Vector3 _p2
     (send _p2 :deserialize buf ptr-) (incf ptr- (send _p2 :serialization-length))
   ;;
   self)
  )

(setf (get opt_msgs::BoundingBox3D :md5sum-) "c2a2f62910885a9960c5f28cc78579c3")
(setf (get opt_msgs::BoundingBox3D :datatype-) "opt_msgs/BoundingBox3D")
(setf (get opt_msgs::BoundingBox3D :definition-)
      "geometry_msgs/Vector3 p1
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
")



(provide :opt_msgs/BoundingBox3D "c2a2f62910885a9960c5f28cc78579c3")


