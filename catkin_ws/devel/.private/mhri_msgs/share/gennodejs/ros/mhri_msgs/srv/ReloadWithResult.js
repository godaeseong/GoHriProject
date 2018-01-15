// Auto-generated. Do not edit!

// (in-package mhri_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ReloadWithResultRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.script_path = null;
    }
    else {
      if (initObj.hasOwnProperty('script_path')) {
        this.script_path = initObj.script_path
      }
      else {
        this.script_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReloadWithResultRequest
    // Serialize message field [script_path]
    bufferOffset = _serializer.string(obj.script_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReloadWithResultRequest
    let len;
    let data = new ReloadWithResultRequest(null);
    // Deserialize message field [script_path]
    data.script_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.script_path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mhri_msgs/ReloadWithResultRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33ad68da42ba9f7bb22ed36417a5ce00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string script_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReloadWithResultRequest(null);
    if (msg.script_path !== undefined) {
      resolved.script_path = msg.script_path;
    }
    else {
      resolved.script_path = ''
    }

    return resolved;
    }
};

class ReloadWithResultResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReloadWithResultResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReloadWithResultResponse
    let len;
    let data = new ReloadWithResultResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mhri_msgs/ReloadWithResultResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReloadWithResultResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ReloadWithResultRequest,
  Response: ReloadWithResultResponse,
  md5sum() { return '433949ba24a221b6192129df3d830876'; },
  datatype() { return 'mhri_msgs/ReloadWithResult'; }
};
