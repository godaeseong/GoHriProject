;; Auto-generated. Do not edit!


(when (boundp 'mhri_social_msgs::RecognizedWord)
  (if (not (find-package "MHRI_SOCIAL_MSGS"))
    (make-package "MHRI_SOCIAL_MSGS"))
  (shadow 'RecognizedWord (find-package "MHRI_SOCIAL_MSGS")))
(unless (find-package "MHRI_SOCIAL_MSGS::RECOGNIZEDWORD")
  (make-package "MHRI_SOCIAL_MSGS::RECOGNIZEDWORD"))

(in-package "ROS")
;;//! \htmlinclude RecognizedWord.msg.html


(defclass mhri_social_msgs::RecognizedWord
  :super ros::object
  :slots (_recognized_word _confidence ))

(defmethod mhri_social_msgs::RecognizedWord
  (:init
   (&key
    ((:recognized_word __recognized_word) "")
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _recognized_word (string __recognized_word))
   (setq _confidence (float __confidence))
   self)
  (:recognized_word
   (&optional __recognized_word)
   (if __recognized_word (setq _recognized_word __recognized_word)) _recognized_word)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; string _recognized_word
    4 (length _recognized_word)
    ;; float64 _confidence
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _recognized_word
       (write-long (length _recognized_word) s) (princ _recognized_word s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _recognized_word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _recognized_word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mhri_social_msgs::RecognizedWord :md5sum-) "51c6e3e563ea88eab63cbd1935da005e")
(setf (get mhri_social_msgs::RecognizedWord :datatype-) "mhri_social_msgs/RecognizedWord")
(setf (get mhri_social_msgs::RecognizedWord :definition-)
      "string recognized_word
float64 confidence
")



(provide :mhri_social_msgs/RecognizedWord "51c6e3e563ea88eab63cbd1935da005e")


