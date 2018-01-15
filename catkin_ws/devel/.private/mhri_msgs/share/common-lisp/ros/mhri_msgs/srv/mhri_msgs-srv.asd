
(cl:in-package :asdf)

(defsystem "mhri_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetDataList" :depends-on ("_package_GetDataList"))
    (:file "_package_GetDataList" :depends-on ("_package"))
    (:file "GetInstalledGestures" :depends-on ("_package_GetInstalledGestures"))
    (:file "_package_GetInstalledGestures" :depends-on ("_package"))
    (:file "ReadData" :depends-on ("_package_ReadData"))
    (:file "_package_ReadData" :depends-on ("_package"))
    (:file "RegisterData" :depends-on ("_package_RegisterData"))
    (:file "_package_RegisterData" :depends-on ("_package"))
    (:file "ReloadWithResult" :depends-on ("_package_ReloadWithResult"))
    (:file "_package_ReloadWithResult" :depends-on ("_package"))
    (:file "WriteData" :depends-on ("_package_WriteData"))
    (:file "_package_WriteData" :depends-on ("_package"))
  ))