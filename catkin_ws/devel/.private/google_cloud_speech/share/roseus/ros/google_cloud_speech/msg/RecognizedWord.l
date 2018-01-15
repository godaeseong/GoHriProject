;; Auto-generated. Do not edit!


(when (boundp 'google_cloud_speech::RecognizedWord)
  (if (not (find-package "GOOGLE_CLOUD_SPEECH"))
    (make-package "GOOGLE_CLOUD_SPEECH"))
  (shadow 'RecognizedWord (find-package "GOOGLE_CLOUD_SPEECH")))
(unless (find-package "GOOGLE_CLOUD_SPEECH::RECOGNIZEDWORD")
  (make-package "GOOGLE_CLOUD_SPEECH::RECOGNIZEDWORD"))

(in-package "ROS")
;;//! \htmlinclude RecognizedWord.msg.html


(defclass google_cloud_speech::RecognizedWord
  :super ros::object
  :slots (_recognized_word _confidence ))

(defmethod google_cloud_speech::RecognizedWord
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

(setf (get google_cloud_speech::RecognizedWord :md5sum-) "51c6e3e563ea88eab63cbd1935da005e")
(setf (get google_cloud_speech::RecognizedWord :datatype-) "google_cloud_speech/RecognizedWord")
(setf (get google_cloud_speech::RecognizedWord :definition-)
      "string recognized_word
float64 confidence

")



(provide :google_cloud_speech/RecognizedWord "51c6e3e563ea88eab63cbd1935da005e")


