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

class WriteDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.perception_name = null;
      this.data = null;
      this.by = null;
    }
    else {
      if (initObj.hasOwnProperty('perception_name')) {
        this.perception_name = initObj.perception_name
      }
      else {
        this.perception_name = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('by')) {
        this.by = initObj.by
      }
      else {
        this.by = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WriteDataRequest
    // Serialize message field [perception_name]
    bufferOffset = _serializer.string(obj.perception_name, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [by]
    bufferOffset = _serializer.string(obj.by, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WriteDataRequest
    let len;
    let data = new WriteDataRequest(null);
    // Deserialize message field [perception_name]
    data.perception_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [by]
    data.by = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.perception_name.length;
    length += object.data.length;
    length += object.by.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mhri_msgs/WriteDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '954707f6e6f22171e276c75167a139ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string perception_name
    string data
    string by
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WriteDataRequest(null);
    if (msg.perception_name !== undefined) {
      resolved.perception_name = msg.perception_name;
    }
    else {
      resolved.perception_name = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.by !== undefined) {
      resolved.by = msg.by;
    }
    else {
      resolved.by = ''
    }

    return resolved;
    }
};

class WriteDataResponse {
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
    // Serializes a message object of type WriteDataResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WriteDataResponse
    let len;
    let data = new WriteDataResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mhri_msgs/WriteDataResponse';
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
    const resolved = new WriteDataResponse(null);
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
  Request: WriteDataRequest,
  Response: WriteDataResponse,
  md5sum() { return '4296fcf55efa7b57ddad66edc397b06f'; },
  datatype() { return 'mhri_msgs/WriteData'; }
};
