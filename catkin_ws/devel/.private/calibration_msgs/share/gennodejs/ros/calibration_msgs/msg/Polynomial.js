// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Polynomial {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max_degree = null;
      this.min_degree = null;
      this.coefficients = null;
    }
    else {
      if (initObj.hasOwnProperty('max_degree')) {
        this.max_degree = initObj.max_degree
      }
      else {
        this.max_degree = 0;
      }
      if (initObj.hasOwnProperty('min_degree')) {
        this.min_degree = initObj.min_degree
      }
      else {
        this.min_degree = 0;
      }
      if (initObj.hasOwnProperty('coefficients')) {
        this.coefficients = initObj.coefficients
      }
      else {
        this.coefficients = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Polynomial
    // Serialize message field [max_degree]
    bufferOffset = _serializer.int32(obj.max_degree, buffer, bufferOffset);
    // Serialize message field [min_degree]
    bufferOffset = _serializer.int32(obj.min_degree, buffer, bufferOffset);
    // Serialize message field [coefficients]
    bufferOffset = _arraySerializer.float64(obj.coefficients, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Polynomial
    let len;
    let data = new Polynomial(null);
    // Deserialize message field [max_degree]
    data.max_degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [min_degree]
    data.min_degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [coefficients]
    data.coefficients = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.coefficients.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/Polynomial';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bf430c82e35b84262e2b764637662e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 max_degree
    int32 min_degree
    float64[] coefficients
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Polynomial(null);
    if (msg.max_degree !== undefined) {
      resolved.max_degree = msg.max_degree;
    }
    else {
      resolved.max_degree = 0
    }

    if (msg.min_degree !== undefined) {
      resolved.min_degree = msg.min_degree;
    }
    else {
      resolved.min_degree = 0
    }

    if (msg.coefficients !== undefined) {
      resolved.coefficients = msg.coefficients;
    }
    else {
      resolved.coefficients = []
    }

    return resolved;
    }
};

module.exports = Polynomial;
