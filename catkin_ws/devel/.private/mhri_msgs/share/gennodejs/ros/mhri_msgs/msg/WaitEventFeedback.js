// Auto-generated. Do not edit!

// (in-package mhri_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WaitEventFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_waiting = null;
    }
    else {
      if (initObj.hasOwnProperty('is_waiting')) {
        this.is_waiting = initObj.is_waiting
      }
      else {
        this.is_waiting = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaitEventFeedback
    // Serialize message field [is_waiting]
    bufferOffset = _serializer.bool(obj.is_waiting, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaitEventFeedback
    let len;
    let data = new WaitEventFeedback(null);
    // Deserialize message field [is_waiting]
    data.is_waiting = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mhri_msgs/WaitEventFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77fd87dc2e06faf5a4acba67f1e878bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # No Feedback
    bool is_waiting
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaitEventFeedback(null);
    if (msg.is_waiting !== undefined) {
      resolved.is_waiting = msg.is_waiting;
    }
    else {
      resolved.is_waiting = false
    }

    return resolved;
    }
};

module.exports = WaitEventFeedback;