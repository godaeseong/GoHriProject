// Auto-generated. Do not edit!

// (in-package opt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox3D = require('./BoundingBox3D.js');
let BoundingBox2D = require('./BoundingBox2D.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.box_3D = null;
      this.box_2D = null;
      this.centroid = null;
      this.bottom = null;
      this.top = null;
      this.height = null;
      this.confidence = null;
      this.distance = null;
      this.occluded = null;
    }
    else {
      if (initObj.hasOwnProperty('box_3D')) {
        this.box_3D = initObj.box_3D
      }
      else {
        this.box_3D = new BoundingBox3D();
      }
      if (initObj.hasOwnProperty('box_2D')) {
        this.box_2D = initObj.box_2D
      }
      else {
        this.box_2D = new BoundingBox2D();
      }
      if (initObj.hasOwnProperty('centroid')) {
        this.centroid = initObj.centroid
      }
      else {
        this.centroid = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('bottom')) {
        this.bottom = initObj.bottom
      }
      else {
        this.bottom = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('occluded')) {
        this.occluded = initObj.occluded
      }
      else {
        this.occluded = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Detection
    // Serialize message field [box_3D]
    bufferOffset = BoundingBox3D.serialize(obj.box_3D, buffer, bufferOffset);
    // Serialize message field [box_2D]
    bufferOffset = BoundingBox2D.serialize(obj.box_2D, buffer, bufferOffset);
    // Serialize message field [centroid]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.centroid, buffer, bufferOffset);
    // Serialize message field [bottom]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.bottom, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.top, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [occluded]
    bufferOffset = _serializer.bool(obj.occluded, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Detection
    let len;
    let data = new Detection(null);
    // Deserialize message field [box_3D]
    data.box_3D = BoundingBox3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_2D]
    data.box_2D = BoundingBox2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [centroid]
    data.centroid = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [bottom]
    data.bottom = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [occluded]
    data.occluded = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 161;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opt_msgs/Detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8c84b166dcde721bb56a043ef007291';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    opt_msgs/BoundingBox3D box_3D
    opt_msgs/BoundingBox2D box_2D
    
    geometry_msgs/Vector3 centroid
    geometry_msgs/Vector3 bottom
    geometry_msgs/Vector3 top
    
    float64 height
    float64 confidence
    float64 distance
    bool occluded
    
    ================================================================================
    MSG: opt_msgs/BoundingBox3D
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
    ================================================================================
    MSG: opt_msgs/BoundingBox2D
    int32 x
    int32 y
    int32 width
    int32 height
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Detection(null);
    if (msg.box_3D !== undefined) {
      resolved.box_3D = BoundingBox3D.Resolve(msg.box_3D)
    }
    else {
      resolved.box_3D = new BoundingBox3D()
    }

    if (msg.box_2D !== undefined) {
      resolved.box_2D = BoundingBox2D.Resolve(msg.box_2D)
    }
    else {
      resolved.box_2D = new BoundingBox2D()
    }

    if (msg.centroid !== undefined) {
      resolved.centroid = geometry_msgs.msg.Vector3.Resolve(msg.centroid)
    }
    else {
      resolved.centroid = new geometry_msgs.msg.Vector3()
    }

    if (msg.bottom !== undefined) {
      resolved.bottom = geometry_msgs.msg.Vector3.Resolve(msg.bottom)
    }
    else {
      resolved.bottom = new geometry_msgs.msg.Vector3()
    }

    if (msg.top !== undefined) {
      resolved.top = geometry_msgs.msg.Vector3.Resolve(msg.top)
    }
    else {
      resolved.top = new geometry_msgs.msg.Vector3()
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.occluded !== undefined) {
      resolved.occluded = msg.occluded;
    }
    else {
      resolved.occluded = false
    }

    return resolved;
    }
};

module.exports = Detection;
