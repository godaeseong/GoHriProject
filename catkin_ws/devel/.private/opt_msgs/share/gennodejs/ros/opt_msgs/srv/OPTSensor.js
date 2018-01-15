// Auto-generated. Do not edit!

// (in-package opt_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class OPTSensorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.session_id = null;
      this.id = null;
      this.type = null;
      this.serial = null;
      this.ip = null;
      this.serial_left = null;
      this.serial_right = null;
    }
    else {
      if (initObj.hasOwnProperty('session_id')) {
        this.session_id = initObj.session_id
      }
      else {
        this.session_id = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('serial')) {
        this.serial = initObj.serial
      }
      else {
        this.serial = '';
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('serial_left')) {
        this.serial_left = initObj.serial_left
      }
      else {
        this.serial_left = '';
      }
      if (initObj.hasOwnProperty('serial_right')) {
        this.serial_right = initObj.serial_right
      }
      else {
        this.serial_right = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OPTSensorRequest
    // Serialize message field [session_id]
    bufferOffset = _serializer.uint64(obj.session_id, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [serial]
    bufferOffset = _serializer.string(obj.serial, buffer, bufferOffset);
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [serial_left]
    bufferOffset = _serializer.string(obj.serial_left, buffer, bufferOffset);
    // Serialize message field [serial_right]
    bufferOffset = _serializer.string(obj.serial_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OPTSensorRequest
    let len;
    let data = new OPTSensorRequest(null);
    // Deserialize message field [session_id]
    data.session_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [serial]
    data.serial = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [serial_left]
    data.serial_left = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [serial_right]
    data.serial_right = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.serial.length;
    length += object.ip.length;
    length += object.serial_left.length;
    length += object.serial_right.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'opt_msgs/OPTSensorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd8a9a1b311356c9fc25f0d9bb085f73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TYPE_NOT_SET=0
    uint8 TYPE_KINECT1=1
    uint8 TYPE_SR4500=2
    uint8 TYPE_STEREO_PG=3
    uint8 TYPE_KINECT2=4
    
    uint64 session_id
    
    string id
    uint8  type
    
    
    string serial
    
    
    string ip
    
    
    string serial_left
    string serial_right
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OPTSensorRequest(null);
    if (msg.session_id !== undefined) {
      resolved.session_id = msg.session_id;
    }
    else {
      resolved.session_id = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.serial !== undefined) {
      resolved.serial = msg.serial;
    }
    else {
      resolved.serial = ''
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.serial_left !== undefined) {
      resolved.serial_left = msg.serial_left;
    }
    else {
      resolved.serial_left = ''
    }

    if (msg.serial_right !== undefined) {
      resolved.serial_right = msg.serial_right;
    }
    else {
      resolved.serial_right = ''
    }

    return resolved;
    }
};

// Constants for message
OPTSensorRequest.Constants = {
  TYPE_NOT_SET: 0,
  TYPE_KINECT1: 1,
  TYPE_SR4500: 2,
  TYPE_STEREO_PG: 3,
  TYPE_KINECT2: 4,
}

class OPTSensorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OPTSensorResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OPTSensorResponse
    let len;
    let data = new OPTSensorResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'opt_msgs/OPTSensorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac261c205e4177b1ec185bac70e17d54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 STATUS_OK=0
    uint8 STATUS_ERROR=1
    
    uint8  status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OPTSensorResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
OPTSensorResponse.Constants = {
  STATUS_OK: 0,
  STATUS_ERROR: 1,
}

module.exports = {
  Request: OPTSensorRequest,
  Response: OPTSensorResponse,
  md5sum() { return 'e973e0250323fe20e965914453fb0ff5'; },
  datatype() { return 'opt_msgs/OPTSensor'; }
};
