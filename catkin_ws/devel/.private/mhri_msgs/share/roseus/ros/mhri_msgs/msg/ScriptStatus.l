;; Auto-generated. Do not edit!


(when (boundp 'mhri_msgs::ScriptStatus)
  (if (not (find-package "MHRI_MSGS"))
    (make-package "MHRI_MSGS"))
  (shadow 'ScriptStatus (find-package "MHRI_MSGS")))
(unless (find-package "MHRI_MSGS::SCRIPTSTATUS")
  (make-package "MHRI_MSGS::SCRIPTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ScriptStatus.msg.html


(defclass mhri_msgs::ScriptStatus
  :super ros::object
  :slots (_last_match _current_topic _topic_structure _user_vars ))

(defmethod mhri_msgs::ScriptStatus
  (:init
   (&key
    ((:last_match __last_match) "")
    ((:current_topic __current_topic) "")
    ((:topic_structure __topic_structure) "")
    ((:user_vars __user_vars) "")
    )
   (send-super :init)
   (setq _last_match (string __last_match))
   (setq _current_topic (string __current_topic))
   (setq _topic_structure (string __topic_structure))
   (setq _user_vars (string __user_vars))
   self)
  (:last_match
   (&optional __last_match)
   (if __last_match (setq _last_match __last_match)) _last_match)
  (:current_topic
   (&optional __current_topic)
   (if __current_topic (setq _current_topic __current_topic)) _current_topic)
  (:topic_structure
   (&optional __topic_structure)
   (if __topic_structure (setq _topic_structure __topic_structure)) _topic_structure)
  (:user_vars
   (&optional __user_vars)
   (if __user_vars (setq _user_vars __user_vars)) _user_vars)
  (:serialization-length
   ()
   (+
    ;; string _last_match
    4 (length _last_match)
    ;; string _current_topic
    4 (length _current_topic)
    ;; string _topic_structure
    4 (length _topic_structure)
    ;; string _user_vars
    4 (length _user_vars)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _last_match
       (write-long (length _last_match) s) (princ _last_match s)
     ;; string _current_topic
       (write-long (length _current_topic) s) (princ _current_topic s)
     ;; string _topic_structure
       (write-long (length _topic_structure) s) (princ _topic_structure s)
     ;; string _user_vars
       (write-long (length _user_vars) s) (princ _user_vars s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _last_match
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_match (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _topic_structure
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_structure (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _user_vars
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_vars (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mhri_msgs::ScriptStatus :md5sum-) "07603c38a67cb1e997f0292a756e0758")
(setf (get mhri_msgs::ScriptStatus :datatype-) "mhri_msgs/ScriptStatus")
(setf (get mhri_msgs::ScriptStatus :definition-)
      "string last_match
string current_topic
string topic_structure
string user_vars

")



(provide :mhri_msgs/ScriptStatus "07603c38a67cb1e997f0292a756e0758")


