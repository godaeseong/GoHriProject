// Auto-generated. Do not edit!

// (in-package opt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoiRect = require('./RoiRect.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Rois {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rois = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rois')) {
        this.rois = initObj.rois
      }
      else {
        this.rois = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rois
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rois]
    // Serialize the length for message field [rois]
    bufferOffset = _serializer.uint32(obj.rois.length, buffer, bufferOffset);
    obj.rois.forEach((val) => {
      bufferOffset = RoiRect.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rois
    let len;
    let data = new Rois(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rois]
    // Deserialize array length for message field [rois]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rois = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rois[i] = RoiRect.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 28 * object.rois.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opt_msgs/Rois';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd62832a3756bef758b493384cfce0655';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    RoiRect[] rois
    
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
    MSG: opt_msgs/RoiRect
    int32 x
    int32 y
    int32 width
    int32 height
    int32 label 
    float64 confidence 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rois(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rois !== undefined) {
      resolved.rois = new Array(msg.rois.length);
      for (let i = 0; i < resolved.rois.length; ++i) {
        resolved.rois[i] = RoiRect.Resolve(msg.rois[i]);
      }
    }
    else {
      resolved.rois = []
    }

    return resolved;
    }
};

module.exports = Rois;
