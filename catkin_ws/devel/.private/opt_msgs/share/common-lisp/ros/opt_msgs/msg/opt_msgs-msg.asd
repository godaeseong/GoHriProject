
(cl:in-package :asdf)

(defsystem "opt_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox2D" :depends-on ("_package_BoundingBox2D"))
    (:file "_package_BoundingBox2D" :depends-on ("_package"))
    (:file "BoundingBox3D" :depends-on ("_package_BoundingBox3D"))
    (:file "_package_BoundingBox3D" :depends-on ("_package"))
    (:file "CalibrationStatus" :depends-on ("_package_CalibrationStatus"))
    (:file "_package_CalibrationStatus" :depends-on ("_package"))
    (:file "Detection" :depends-on ("_package_Detection"))
    (:file "_package_Detection" :depends-on ("_package"))
    (:file "DetectionArray" :depends-on ("_package_DetectionArray"))
    (:file "_package_DetectionArray" :depends-on ("_package"))
    (:file "HumanEntries" :depends-on ("_package_HumanEntries"))
    (:file "_package_HumanEntries" :depends-on ("_package"))
    (:file "HumanEntry" :depends-on ("_package_HumanEntry"))
    (:file "_package_HumanEntry" :depends-on ("_package"))
    (:file "IDArray" :depends-on ("_package_IDArray"))
    (:file "_package_IDArray" :depends-on ("_package"))
    (:file "RoiRect" :depends-on ("_package_RoiRect"))
    (:file "_package_RoiRect" :depends-on ("_package"))
    (:file "Rois" :depends-on ("_package_Rois"))
    (:file "_package_Rois" :depends-on ("_package"))
    (:file "Track" :depends-on ("_package_Track"))
    (:file "_package_Track" :depends-on ("_package"))
    (:file "TrackArray" :depends-on ("_package_TrackArray"))
    (:file "_package_TrackArray" :depends-on ("_package"))
  ))