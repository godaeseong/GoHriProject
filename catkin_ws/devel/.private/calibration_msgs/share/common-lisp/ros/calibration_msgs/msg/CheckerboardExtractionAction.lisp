; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude CheckerboardExtractionAction.msg.html

(cl:defclass <CheckerboardExtractionAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type calibration_msgs-msg:CheckerboardExtractionActionGoal
    :initform (cl:make-instance 'calibration_msgs-msg:CheckerboardExtractionActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type calibration_msgs-msg:CheckerboardExtractionActionResult
    :initform (cl:make-instance 'calibration_msgs-msg:CheckerboardExtractionActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type calibration_msgs-msg:CheckerboardExtractionActionFeedback
    :initform (cl:make-instance 'calibration_msgs-msg:CheckerboardExtractionActionFeedback)))
)

(cl:defclass CheckerboardExtractionAction (<CheckerboardExtractionAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckerboardExtractionAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckerboardExtractionAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<CheckerboardExtractionAction> is deprecated: use calibration_msgs-msg:CheckerboardExtractionAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <CheckerboardExtractionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:action_goal-val is deprecated.  Use calibration_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <CheckerboardExtractionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:action_result-val is deprecated.  Use calibration_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <CheckerboardExtractionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:action_feedback-val is deprecated.  Use calibration_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckerboardExtractionAction>) ostream)
  "Serializes a message object of type '<CheckerboardExtractionAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckerboardExtractionAction>) istream)
  "Deserializes a message object of type '<CheckerboardExtractionAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckerboardExtractionAction>)))
  "Returns string type for a message object of type '<CheckerboardExtractionAction>"
  "calibration_msgs/CheckerboardExtractionAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckerboardExtractionAction)))
  "Returns string type for a message object of type 'CheckerboardExtractionAction"
  "calibration_msgs/CheckerboardExtractionAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckerboardExtractionAction>)))
  "Returns md5sum for a message object of type '<CheckerboardExtractionAction>"
  "8769c885e134bb489d02187cc70b848f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckerboardExtractionAction)))
  "Returns md5sum for a message object of type 'CheckerboardExtractionAction"
  "8769c885e134bb489d02187cc70b848f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckerboardExtractionAction>)))
  "Returns full string definition for message of type '<CheckerboardExtractionAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%CheckerboardExtractionActionGoal action_goal~%CheckerboardExtractionActionResult action_result~%CheckerboardExtractionActionFeedback action_feedback~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%CheckerboardExtractionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%~%uint8 EXTRACT_FROM_NONE=0~%uint8 EXTRACT_FROM_IMAGE=1~%uint8 EXTRACT_FROM_DEPTH=2~%uint8 EXTRACT_FROM_ALL=3~%~%int32 ALL_POINTS=-1~%int32 PLANE_ONLY=0~%~%Header header~%~%Checkerboard checkerboard~%uint8 extract_from~%int32 max_depth_points~%~%# max_depth_points must be in the interval [3, +inf[~%# or be one of the special values ALL_POINTS, PLANE_ONLY~%~%~%================================================================================~%MSG: calibration_msgs/Checkerboard~%Header header~%~%string parent_frame_id~%geometry_msgs/Pose pose~%~%uint32 rows~%uint32 cols~%float32 cell_width~%float32 cell_height~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CheckerboardExtractionResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#result~%~%calibration_msgs/Point2DArray[] image_corners~%calibration_msgs/PointArray[]   depth_points~%~%# If depth_points[i] size is 2:~%#  - depth_points[i][0] = point on the plane~%#  - depth_points[i][1] = plane normal~%~%~%================================================================================~%MSG: calibration_msgs/Point2DArray~%Header header~%~%uint32 x_size~%uint32 y_size~%calibration_msgs/Point2D[] points~%~%================================================================================~%MSG: calibration_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: calibration_msgs/PointArray~%Header header~%~%uint32 x_size~%uint32 y_size~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CheckerboardExtractionFeedback feedback~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckerboardExtractionAction)))
  "Returns full string definition for message of type 'CheckerboardExtractionAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%CheckerboardExtractionActionGoal action_goal~%CheckerboardExtractionActionResult action_result~%CheckerboardExtractionActionFeedback action_feedback~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%CheckerboardExtractionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%~%uint8 EXTRACT_FROM_NONE=0~%uint8 EXTRACT_FROM_IMAGE=1~%uint8 EXTRACT_FROM_DEPTH=2~%uint8 EXTRACT_FROM_ALL=3~%~%int32 ALL_POINTS=-1~%int32 PLANE_ONLY=0~%~%Header header~%~%Checkerboard checkerboard~%uint8 extract_from~%int32 max_depth_points~%~%# max_depth_points must be in the interval [3, +inf[~%# or be one of the special values ALL_POINTS, PLANE_ONLY~%~%~%================================================================================~%MSG: calibration_msgs/Checkerboard~%Header header~%~%string parent_frame_id~%geometry_msgs/Pose pose~%~%uint32 rows~%uint32 cols~%float32 cell_width~%float32 cell_height~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CheckerboardExtractionResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#result~%~%calibration_msgs/Point2DArray[] image_corners~%calibration_msgs/PointArray[]   depth_points~%~%# If depth_points[i] size is 2:~%#  - depth_points[i][0] = point on the plane~%#  - depth_points[i][1] = plane normal~%~%~%================================================================================~%MSG: calibration_msgs/Point2DArray~%Header header~%~%uint32 x_size~%uint32 y_size~%calibration_msgs/Point2D[] points~%~%================================================================================~%MSG: calibration_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: calibration_msgs/PointArray~%Header header~%~%uint32 x_size~%uint32 y_size~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CheckerboardExtractionFeedback feedback~%~%================================================================================~%MSG: calibration_msgs/CheckerboardExtractionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckerboardExtractionAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckerboardExtractionAction>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckerboardExtractionAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))