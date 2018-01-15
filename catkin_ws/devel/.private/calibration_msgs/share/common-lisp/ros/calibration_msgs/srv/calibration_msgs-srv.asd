
(cl:in-package :asdf)

(defsystem "calibration_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :calibration_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetCalibrationResults" :depends-on ("_package_GetCalibrationResults"))
    (:file "_package_GetCalibrationResults" :depends-on ("_package"))
    (:file "GetDeviceInfo" :depends-on ("_package_GetDeviceInfo"))
    (:file "_package_GetDeviceInfo" :depends-on ("_package"))
  ))