; Auto-generated. Do not edit!


(cl:in-package mhri_msgs-msg)


;//! \htmlinclude WaitEventAction.msg.html

(cl:defclass <WaitEventAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type mhri_msgs-msg:WaitEventActionGoal
    :initform (cl:make-instance 'mhri_msgs-msg:WaitEventActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type mhri_msgs-msg:WaitEventActionResult
    :initform (cl:make-instance 'mhri_msgs-msg:WaitEventActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type mhri_msgs-msg:WaitEventActionFeedback
    :initform (cl:make-instance 'mhri_msgs-msg:WaitEventActionFeedback)))
)

(cl:defclass WaitEventAction (<WaitEventAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaitEventAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaitEventAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mhri_msgs-msg:<WaitEventAction> is deprecated: use mhri_msgs-msg:WaitEventAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <WaitEventAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:action_goal-val is deprecated.  Use mhri_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <WaitEventAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:action_result-val is deprecated.  Use mhri_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <WaitEventAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mhri_msgs-msg:action_feedback-val is deprecated.  Use mhri_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaitEventAction>) ostream)
  "Serializes a message object of type '<WaitEventAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaitEventAction>) istream)
  "Deserializes a message object of type '<WaitEventAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaitEventAction>)))
  "Returns string type for a message object of type '<WaitEventAction>"
  "mhri_msgs/WaitEventAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaitEventAction)))
  "Returns string type for a message object of type 'WaitEventAction"
  "mhri_msgs/WaitEventAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaitEventAction>)))
  "Returns md5sum for a message object of type '<WaitEventAction>"
  "f09827865d9131bf331990d2b291829b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaitEventAction)))
  "Returns md5sum for a message object of type 'WaitEventAction"
  "f09827865d9131bf331990d2b291829b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaitEventAction>)))
  "Returns full string definition for message of type '<WaitEventAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%WaitEventActionGoal action_goal~%WaitEventActionResult action_result~%WaitEventActionFeedback action_feedback~%~%================================================================================~%MSG: mhri_msgs/WaitEventActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%WaitEventGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: mhri_msgs/WaitEventGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define Goal~%Header header~%string[] event_name~%string[] query~%~%================================================================================~%MSG: mhri_msgs/WaitEventActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%WaitEventResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: mhri_msgs/WaitEventResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define Result~%bool result~%string error_msg~%string query_result~%~%================================================================================~%MSG: mhri_msgs/WaitEventActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%WaitEventFeedback feedback~%~%================================================================================~%MSG: mhri_msgs/WaitEventFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# No Feedback~%bool is_waiting~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaitEventAction)))
  "Returns full string definition for message of type 'WaitEventAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%WaitEventActionGoal action_goal~%WaitEventActionResult action_result~%WaitEventActionFeedback action_feedback~%~%================================================================================~%MSG: mhri_msgs/WaitEventActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%WaitEventGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: mhri_msgs/WaitEventGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define Goal~%Header header~%string[] event_name~%string[] query~%~%================================================================================~%MSG: mhri_msgs/WaitEventActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%WaitEventResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: mhri_msgs/WaitEventResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define Result~%bool result~%string error_msg~%string query_result~%~%================================================================================~%MSG: mhri_msgs/WaitEventActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%WaitEventFeedback feedback~%~%================================================================================~%MSG: mhri_msgs/WaitEventFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# No Feedback~%bool is_waiting~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaitEventAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaitEventAction>))
  "Converts a ROS message object to a list"
  (cl:list 'WaitEventAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
