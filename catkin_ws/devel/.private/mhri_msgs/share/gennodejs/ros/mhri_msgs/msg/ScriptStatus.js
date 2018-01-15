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

class ScriptStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.last_match = null;
      this.current_topic = null;
      this.topic_structure = null;
      this.user_vars = null;
    }
    else {
      if (initObj.hasOwnProperty('last_match')) {
        this.last_match = initObj.last_match
      }
      else {
        this.last_match = '';
      }
      if (initObj.hasOwnProperty('current_topic')) {
        this.current_topic = initObj.current_topic
      }
      else {
        this.current_topic = '';
      }
      if (initObj.hasOwnProperty('topic_structure')) {
        this.topic_structure = initObj.topic_structure
      }
      else {
        this.topic_structure = '';
      }
      if (initObj.hasOwnProperty('user_vars')) {
        this.user_vars = initObj.user_vars
      }
      else {
        this.user_vars = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScriptStatus
    // Serialize message field [last_match]
    bufferOffset = _serializer.string(obj.last_match, buffer, bufferOffset);
    // Serialize message field [current_topic]
    bufferOffset = _serializer.string(obj.current_topic, buffer, bufferOffset);
    // Serialize message field [topic_structure]
    bufferOffset = _serializer.string(obj.topic_structure, buffer, bufferOffset);
    // Serialize message field [user_vars]
    bufferOffset = _serializer.string(obj.user_vars, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScriptStatus
    let len;
    let data = new ScriptStatus(null);
    // Deserialize message field [last_match]
    data.last_match = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_topic]
    data.current_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [topic_structure]
    data.topic_structure = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [user_vars]
    data.user_vars = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.last_match.length;
    length += object.current_topic.length;
    length += object.topic_structure.length;
    length += object.user_vars.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mhri_msgs/ScriptStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07603c38a67cb1e997f0292a756e0758';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string last_match
    string current_topic
    string topic_structure
    string user_vars
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScriptStatus(null);
    if (msg.last_match !== undefined) {
      resolved.last_match = msg.last_match;
    }
    else {
      resolved.last_match = ''
    }

    if (msg.current_topic !== undefined) {
      resolved.current_topic = msg.current_topic;
    }
    else {
      resolved.current_topic = ''
    }

    if (msg.topic_structure !== undefined) {
      resolved.topic_structure = msg.topic_structure;
    }
    else {
      resolved.topic_structure = ''
    }

    if (msg.user_vars !== undefined) {
      resolved.user_vars = msg.user_vars;
    }
    else {
      resolved.user_vars = ''
    }

    return resolved;
    }
};

module.exports = ScriptStatus;
