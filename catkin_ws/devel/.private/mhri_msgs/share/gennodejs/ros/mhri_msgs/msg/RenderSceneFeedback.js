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

class RenderSceneFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_rendering = null;
    }
    else {
      if (initObj.hasOwnProperty('is_rendering')) {
        this.is_rendering = initObj.is_rendering
      }
      else {
        this.is_rendering = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RenderSceneFeedback
    // Serialize message field [is_rendering]
    bufferOffset = _serializer.bool(obj.is_rendering, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RenderSceneFeedback
    let len;
    let data = new RenderSceneFeedback(null);
    // Deserialize message field [is_rendering]
    data.is_rendering = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mhri_msgs/RenderSceneFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d20ec80974a56e3140ebf7d3d745948';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    bool is_rendering
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RenderSceneFeedback(null);
    if (msg.is_rendering !== undefined) {
      resolved.is_rendering = msg.is_rendering;
    }
    else {
      resolved.is_rendering = false
    }

    return resolved;
    }
};

module.exports = RenderSceneFeedback;
