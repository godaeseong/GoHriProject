// Auto-generated. Do not edit!

// (in-package opt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class BoundingBox3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p1 = null;
      this.p2 = null;
    }
    else {
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('p2')) {
        this.p2 = initObj.p2
      }
      else {
        this.p2 = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBox3D
    // Serialize message field [p1]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.p1, buffer, bufferOffset);
    // Serialize message field [p2]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.p2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBox3D
    let len;
    let data = new BoundingBox3D(null);
    // Deserialize message field [p1]
    data.p1 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [p2]
    data.p2 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opt_msgs/BoundingBox3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2a2f62910885a9960c5f28cc78579c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 p1
    geometry_msgs/Vector3 p2
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingBox3D(null);
    if (msg.p1 !== undefined) {
      resolved.p1 = geometry_msgs.msg.Vector3.Resolve(msg.p1)
    }
    else {
      resolved.p1 = new geometry_msgs.msg.Vector3()
    }

    if (msg.p2 !== undefined) {
      resolved.p2 = geometry_msgs.msg.Vector3.Resolve(msg.p2)
    }
    else {
      resolved.p2 = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = BoundingBox3D;
