// Auto-generated. Do not edit!

// (in-package opt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HumanEntry = require('./HumanEntry.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HumanEntries {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.entries = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('entries')) {
        this.entries = initObj.entries
      }
      else {
        this.entries = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanEntries
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [entries]
    // Serialize the length for message field [entries]
    bufferOffset = _serializer.uint32(obj.entries.length, buffer, bufferOffset);
    obj.entries.forEach((val) => {
      bufferOffset = HumanEntry.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanEntries
    let len;
    let data = new HumanEntries(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [entries]
    // Deserialize array length for message field [entries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.entries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.entries[i] = HumanEntry.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 128 * object.entries.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opt_msgs/HumanEntries';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a8c1a02f72face88523f0a8e72a9f6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    HumanEntry[] entries
    
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
    MSG: opt_msgs/HumanEntry
    time stamp
    uint64 personID
    float64 personCentroidX
    float64 personCentroidY
    float64 personCentroidZ
    float64 personBoundingBoxTopCenterX
    float64 personBoundingBoxTopCenterY
    float64 personBoundingBoxTopCenterZ
    float64 Xvelocity
    float64 Yvelocity
    float64 Zvelocity
    float64 ROIwidth
    float64 ROIheight
    float64 Xsigma
    float64 Ysigma
    float64 Zsigma
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanEntries(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.entries !== undefined) {
      resolved.entries = new Array(msg.entries.length);
      for (let i = 0; i < resolved.entries.length; ++i) {
        resolved.entries[i] = HumanEntry.Resolve(msg.entries[i]);
      }
    }
    else {
      resolved.entries = []
    }

    return resolved;
    }
};

module.exports = HumanEntries;
