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

class GetInstalledGesturesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetInstalledGesturesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetInstalledGesturesRequest
    let len;
    let data = new GetInstalledGesturesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mhri_msgs/GetInstalledGesturesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetInstalledGesturesRequest(null);
    return resolved;
    }
};

class GetInstalledGesturesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gestures = null;
    }
    else {
      if (initObj.hasOwnProperty('gestures')) {
        this.gestures = initObj.gestures
      }
      else {
        this.gestures = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetInstalledGesturesResponse
    // Serialize message field [gestures]
    bufferOffset = _serializer.string(obj.gestures, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetInstalledGesturesResponse
    let len;
    let data = new GetInstalledGesturesResponse(null);
    // Deserialize message field [gestures]
    data.gestures = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gestures.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mhri_msgs/GetInstalledGesturesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5365bf3eb93d84030fba702bd892ff42';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string gestures
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetInstalledGesturesResponse(null);
    if (msg.gestures !== undefined) {
      resolved.gestures = msg.gestures;
    }
    else {
      resolved.gestures = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetInstalledGesturesRequest,
  Response: GetInstalledGesturesResponse,
  md5sum() { return '5365bf3eb93d84030fba702bd892ff42'; },
  datatype() { return 'mhri_msgs/GetInstalledGestures'; }
};
