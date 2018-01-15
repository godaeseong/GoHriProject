// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Checkerboard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parent_frame_id = null;
      this.pose = null;
      this.rows = null;
      this.cols = null;
      this.cell_width = null;
      this.cell_height = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('parent_frame_id')) {
        this.parent_frame_id = initObj.parent_frame_id
      }
      else {
        this.parent_frame_id = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('rows')) {
        this.rows = initObj.rows
      }
      else {
        this.rows = 0;
      }
      if (initObj.hasOwnProperty('cols')) {
        this.cols = initObj.cols
      }
      else {
        this.cols = 0;
      }
      if (initObj.hasOwnProperty('cell_width')) {
        this.cell_width = initObj.cell_width
      }
      else {
        this.cell_width = 0.0;
      }
      if (initObj.hasOwnProperty('cell_height')) {
        this.cell_height = initObj.cell_height
      }
      else {
        this.cell_height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Checkerboard
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parent_frame_id]
    bufferOffset = _serializer.string(obj.parent_frame_id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [rows]
    bufferOffset = _serializer.uint32(obj.rows, buffer, bufferOffset);
    // Serialize message field [cols]
    bufferOffset = _serializer.uint32(obj.cols, buffer, bufferOffset);
    // Serialize message field [cell_width]
    bufferOffset = _serializer.float32(obj.cell_width, buffer, bufferOffset);
    // Serialize message field [cell_height]
    bufferOffset = _serializer.float32(obj.cell_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Checkerboard
    let len;
    let data = new Checkerboard(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_frame_id]
    data.parent_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [rows]
    data.rows = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cols]
    data.cols = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cell_width]
    data.cell_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cell_height]
    data.cell_height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.parent_frame_id.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/Checkerboard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f294a2ad8679265397b75fad5672c495';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string parent_frame_id
    geometry_msgs/Pose pose
    
    uint32 rows
    uint32 cols
    float32 cell_width
    float32 cell_height
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Checkerboard(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.parent_frame_id !== undefined) {
      resolved.parent_frame_id = msg.parent_frame_id;
    }
    else {
      resolved.parent_frame_id = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.rows !== undefined) {
      resolved.rows = msg.rows;
    }
    else {
      resolved.rows = 0
    }

    if (msg.cols !== undefined) {
      resolved.cols = msg.cols;
    }
    else {
      resolved.cols = 0
    }

    if (msg.cell_width !== undefined) {
      resolved.cell_width = msg.cell_width;
    }
    else {
      resolved.cell_width = 0.0
    }

    if (msg.cell_height !== undefined) {
      resolved.cell_height = msg.cell_height;
    }
    else {
      resolved.cell_height = 0.0
    }

    return resolved;
    }
};

module.exports = Checkerboard;
