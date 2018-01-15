// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CheckerboardExtractionActionGoal = require('./CheckerboardExtractionActionGoal.js');
let CheckerboardExtractionActionResult = require('./CheckerboardExtractionActionResult.js');
let CheckerboardExtractionActionFeedback = require('./CheckerboardExtractionActionFeedback.js');

//-----------------------------------------------------------

class CheckerboardExtractionAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new CheckerboardExtractionActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new CheckerboardExtractionActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new CheckerboardExtractionActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckerboardExtractionAction
    // Serialize message field [action_goal]
    bufferOffset = CheckerboardExtractionActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = CheckerboardExtractionActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = CheckerboardExtractionActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckerboardExtractionAction
    let len;
    let data = new CheckerboardExtractionAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = CheckerboardExtractionActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = CheckerboardExtractionActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = CheckerboardExtractionActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CheckerboardExtractionActionGoal.getMessageSize(object.action_goal);
    length += CheckerboardExtractionActionResult.getMessageSize(object.action_result);
    length += CheckerboardExtractionActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/CheckerboardExtractionAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8769c885e134bb489d02187cc70b848f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    CheckerboardExtractionActionGoal action_goal
    CheckerboardExtractionActionResult action_result
    CheckerboardExtractionActionFeedback action_feedback
    
    ================================================================================
    MSG: calibration_msgs/CheckerboardExtractionActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    CheckerboardExtractionGoal goal
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: calibration_msgs/CheckerboardExtractionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal
    
    uint8 EXTRACT_FROM_NONE=0
    uint8 EXTRACT_FROM_IMAGE=1
    uint8 EXTRACT_FROM_DEPTH=2
    uint8 EXTRACT_FROM_ALL=3
    
    int32 ALL_POINTS=-1
    int32 PLANE_ONLY=0
    
    Header header
    
    Checkerboard checkerboard
    uint8 extract_from
    int32 max_depth_points
    
    # max_depth_points must be in the interval [3, +inf[
    # or be one of the special values ALL_POINTS, PLANE_ONLY
    
    
    ================================================================================
    MSG: calibration_msgs/Checkerboard
    Header header
    
    string parent_frame_id
    geometry_msgs/Pose pose
    
    uint32 rows
    uint32 cols
    float32 cell_width
    float32 cell_height
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: calibration_msgs/CheckerboardExtractionActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    CheckerboardExtractionResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: calibration_msgs/CheckerboardExtractionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    #result
    
    calibration_msgs/Point2DArray[] image_corners
    calibration_msgs/PointArray[]   depth_points
    
    # If depth_points[i] size is 2:
    #  - depth_points[i][0] = point on the plane
    #  - depth_points[i][1] = plane normal
    
    
    ================================================================================
    MSG: calibration_msgs/Point2DArray
    Header header
    
    uint32 x_size
    uint32 y_size
    calibration_msgs/Point2D[] points
    
    ================================================================================
    MSG: calibration_msgs/Point2D
    float64 x
    float64 y
    
    ================================================================================
    MSG: calibration_msgs/PointArray
    Header header
    
    uint32 x_size
    uint32 y_size
    geometry_msgs/Point[] points
    
    ================================================================================
    MSG: calibration_msgs/CheckerboardExtractionActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    CheckerboardExtractionFeedback feedback
    
    ================================================================================
    MSG: calibration_msgs/CheckerboardExtractionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    #feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckerboardExtractionAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = CheckerboardExtractionActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new CheckerboardExtractionActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = CheckerboardExtractionActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new CheckerboardExtractionActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = CheckerboardExtractionActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new CheckerboardExtractionActionFeedback()
    }

    return resolved;
    }
};

module.exports = CheckerboardExtractionAction;
