// Auto-generated. Do not edit!

// (in-package opt_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class OPTTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.calibration_id = null;
      this.parent_id = null;
      this.child_id = null;
      this.transform = null;
    }
    else {
      if (initObj.hasOwnProperty('calibration_id')) {
        this.calibration_id = initObj.calibration_id
      }
      else {
        this.calibration_id = 0;
      }
      if (initObj.hasOwnProperty('parent_id')) {
        this.parent_id = initObj.parent_id
      }
      else {
        this.parent_id = [];
      }
      if (initObj.hasOwnProperty('child_id')) {
        this.child_id = initObj.child_id
      }
      else {
        this.child_id = [];
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OPTTransformRequest
    // Serialize message field [calibration_id]
    bufferOffset = _serializer.uint64(obj.calibration_id, buffer, bufferOffset);
    // Serialize message field [parent_id]
    bufferOffset = _arraySerializer.string(obj.parent_id, buffer, bufferOffset, null);
    // Serialize message field [child_id]
    bufferOffset = _arraySerializer.string(obj.child_id, buffer, bufferOffset, null);
    // Serialize message field [transform]
    // Serialize the length for message field [transform]
    bufferOffset = _serializer.uint32(obj.transform.length, buffer, bufferOffset);
    obj.transform.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Transform.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OPTTransformRequest
    let len;
    let data = new OPTTransformRequest(null);
    // Deserialize message field [calibration_id]
    data.calibration_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [parent_id]
    data.parent_id = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [child_id]
    data.child_id = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [transform]
    // Deserialize array length for message field [transform]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.transform = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.transform[i] = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.parent_id.forEach((val) => {
      length += 4 + val.length;
    });
    object.child_id.forEach((val) => {
      length += 4 + val.length;
    });
    length += 56 * object.transform.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'opt_msgs/OPTTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '990fb5ab10a931419769120db48c5131';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 calibration_id
    
    string[]                  parent_id
    string[]                  child_id
    geometry_msgs/Transform[] transform
    
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OPTTransformRequest(null);
    if (msg.calibration_id !== undefined) {
      resolved.calibration_id = msg.calibration_id;
    }
    else {
      resolved.calibration_id = 0
    }

    if (msg.parent_id !== undefined) {
      resolved.parent_id = msg.parent_id;
    }
    else {
      resolved.parent_id = []
    }

    if (msg.child_id !== undefined) {
      resolved.child_id = msg.child_id;
    }
    else {
      resolved.child_id = []
    }

    if (msg.transform !== undefined) {
      resolved.transform = new Array(msg.transform.length);
      for (let i = 0; i < resolved.transform.length; ++i) {
        resolved.transform[i] = geometry_msgs.msg.Transform.Resolve(msg.transform[i]);
      }
    }
    else {
      resolved.transform = []
    }

    return resolved;
    }
};

class OPTTransformResponse {
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
    // Serializes a message object of type OPTTransformResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OPTTransformResponse
    let len;
    let data = new OPTTransformResponse(null);
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
    return 'opt_msgs/OPTTransformResponse';
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
    const resolved = new OPTTransformResponse(null);
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
OPTTransformResponse.Constants = {
  STATUS_OK: 0,
  STATUS_ERROR: 1,
}

module.exports = {
  Request: OPTTransformRequest,
  Response: OPTTransformResponse,
  md5sum() { return 'c280824f01567ccd998b38545c5bda8d'; },
  datatype() { return 'opt_msgs/OPTTransform'; }
};
