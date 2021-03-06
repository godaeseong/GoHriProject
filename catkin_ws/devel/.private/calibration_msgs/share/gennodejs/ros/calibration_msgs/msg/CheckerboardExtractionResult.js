// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2DArray = require('./Point2DArray.js');
let PointArray = require('./PointArray.js');

//-----------------------------------------------------------

class CheckerboardExtractionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_corners = null;
      this.depth_points = null;
    }
    else {
      if (initObj.hasOwnProperty('image_corners')) {
        this.image_corners = initObj.image_corners
      }
      else {
        this.image_corners = [];
      }
      if (initObj.hasOwnProperty('depth_points')) {
        this.depth_points = initObj.depth_points
      }
      else {
        this.depth_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckerboardExtractionResult
    // Serialize message field [image_corners]
    // Serialize the length for message field [image_corners]
    bufferOffset = _serializer.uint32(obj.image_corners.length, buffer, bufferOffset);
    obj.image_corners.forEach((val) => {
      bufferOffset = Point2DArray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [depth_points]
    // Serialize the length for message field [depth_points]
    bufferOffset = _serializer.uint32(obj.depth_points.length, buffer, bufferOffset);
    obj.depth_points.forEach((val) => {
      bufferOffset = PointArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckerboardExtractionResult
    let len;
    let data = new CheckerboardExtractionResult(null);
    // Deserialize message field [image_corners]
    // Deserialize array length for message field [image_corners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_corners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_corners[i] = Point2DArray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [depth_points]
    // Deserialize array length for message field [depth_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.depth_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.depth_points[i] = PointArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.image_corners.forEach((val) => {
      length += Point2DArray.getMessageSize(val);
    });
    object.depth_points.forEach((val) => {
      length += PointArray.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/CheckerboardExtractionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4a5b4669e26c3906fa9dff20cf24410';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckerboardExtractionResult(null);
    if (msg.image_corners !== undefined) {
      resolved.image_corners = new Array(msg.image_corners.length);
      for (let i = 0; i < resolved.image_corners.length; ++i) {
        resolved.image_corners[i] = Point2DArray.Resolve(msg.image_corners[i]);
      }
    }
    else {
      resolved.image_corners = []
    }

    if (msg.depth_points !== undefined) {
      resolved.depth_points = new Array(msg.depth_points.length);
      for (let i = 0; i < resolved.depth_points.length; ++i) {
        resolved.depth_points[i] = PointArray.Resolve(msg.depth_points[i]);
      }
    }
    else {
      resolved.depth_points = []
    }

    return resolved;
    }
};

module.exports = CheckerboardExtractionResult;
