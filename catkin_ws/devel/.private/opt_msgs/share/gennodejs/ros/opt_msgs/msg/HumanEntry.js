// Auto-generated. Do not edit!

// (in-package opt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HumanEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.personID = null;
      this.personCentroidX = null;
      this.personCentroidY = null;
      this.personCentroidZ = null;
      this.personBoundingBoxTopCenterX = null;
      this.personBoundingBoxTopCenterY = null;
      this.personBoundingBoxTopCenterZ = null;
      this.Xvelocity = null;
      this.Yvelocity = null;
      this.Zvelocity = null;
      this.ROIwidth = null;
      this.ROIheight = null;
      this.Xsigma = null;
      this.Ysigma = null;
      this.Zsigma = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('personID')) {
        this.personID = initObj.personID
      }
      else {
        this.personID = 0;
      }
      if (initObj.hasOwnProperty('personCentroidX')) {
        this.personCentroidX = initObj.personCentroidX
      }
      else {
        this.personCentroidX = 0.0;
      }
      if (initObj.hasOwnProperty('personCentroidY')) {
        this.personCentroidY = initObj.personCentroidY
      }
      else {
        this.personCentroidY = 0.0;
      }
      if (initObj.hasOwnProperty('personCentroidZ')) {
        this.personCentroidZ = initObj.personCentroidZ
      }
      else {
        this.personCentroidZ = 0.0;
      }
      if (initObj.hasOwnProperty('personBoundingBoxTopCenterX')) {
        this.personBoundingBoxTopCenterX = initObj.personBoundingBoxTopCenterX
      }
      else {
        this.personBoundingBoxTopCenterX = 0.0;
      }
      if (initObj.hasOwnProperty('personBoundingBoxTopCenterY')) {
        this.personBoundingBoxTopCenterY = initObj.personBoundingBoxTopCenterY
      }
      else {
        this.personBoundingBoxTopCenterY = 0.0;
      }
      if (initObj.hasOwnProperty('personBoundingBoxTopCenterZ')) {
        this.personBoundingBoxTopCenterZ = initObj.personBoundingBoxTopCenterZ
      }
      else {
        this.personBoundingBoxTopCenterZ = 0.0;
      }
      if (initObj.hasOwnProperty('Xvelocity')) {
        this.Xvelocity = initObj.Xvelocity
      }
      else {
        this.Xvelocity = 0.0;
      }
      if (initObj.hasOwnProperty('Yvelocity')) {
        this.Yvelocity = initObj.Yvelocity
      }
      else {
        this.Yvelocity = 0.0;
      }
      if (initObj.hasOwnProperty('Zvelocity')) {
        this.Zvelocity = initObj.Zvelocity
      }
      else {
        this.Zvelocity = 0.0;
      }
      if (initObj.hasOwnProperty('ROIwidth')) {
        this.ROIwidth = initObj.ROIwidth
      }
      else {
        this.ROIwidth = 0.0;
      }
      if (initObj.hasOwnProperty('ROIheight')) {
        this.ROIheight = initObj.ROIheight
      }
      else {
        this.ROIheight = 0.0;
      }
      if (initObj.hasOwnProperty('Xsigma')) {
        this.Xsigma = initObj.Xsigma
      }
      else {
        this.Xsigma = 0.0;
      }
      if (initObj.hasOwnProperty('Ysigma')) {
        this.Ysigma = initObj.Ysigma
      }
      else {
        this.Ysigma = 0.0;
      }
      if (initObj.hasOwnProperty('Zsigma')) {
        this.Zsigma = initObj.Zsigma
      }
      else {
        this.Zsigma = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanEntry
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [personID]
    bufferOffset = _serializer.uint64(obj.personID, buffer, bufferOffset);
    // Serialize message field [personCentroidX]
    bufferOffset = _serializer.float64(obj.personCentroidX, buffer, bufferOffset);
    // Serialize message field [personCentroidY]
    bufferOffset = _serializer.float64(obj.personCentroidY, buffer, bufferOffset);
    // Serialize message field [personCentroidZ]
    bufferOffset = _serializer.float64(obj.personCentroidZ, buffer, bufferOffset);
    // Serialize message field [personBoundingBoxTopCenterX]
    bufferOffset = _serializer.float64(obj.personBoundingBoxTopCenterX, buffer, bufferOffset);
    // Serialize message field [personBoundingBoxTopCenterY]
    bufferOffset = _serializer.float64(obj.personBoundingBoxTopCenterY, buffer, bufferOffset);
    // Serialize message field [personBoundingBoxTopCenterZ]
    bufferOffset = _serializer.float64(obj.personBoundingBoxTopCenterZ, buffer, bufferOffset);
    // Serialize message field [Xvelocity]
    bufferOffset = _serializer.float64(obj.Xvelocity, buffer, bufferOffset);
    // Serialize message field [Yvelocity]
    bufferOffset = _serializer.float64(obj.Yvelocity, buffer, bufferOffset);
    // Serialize message field [Zvelocity]
    bufferOffset = _serializer.float64(obj.Zvelocity, buffer, bufferOffset);
    // Serialize message field [ROIwidth]
    bufferOffset = _serializer.float64(obj.ROIwidth, buffer, bufferOffset);
    // Serialize message field [ROIheight]
    bufferOffset = _serializer.float64(obj.ROIheight, buffer, bufferOffset);
    // Serialize message field [Xsigma]
    bufferOffset = _serializer.float64(obj.Xsigma, buffer, bufferOffset);
    // Serialize message field [Ysigma]
    bufferOffset = _serializer.float64(obj.Ysigma, buffer, bufferOffset);
    // Serialize message field [Zsigma]
    bufferOffset = _serializer.float64(obj.Zsigma, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanEntry
    let len;
    let data = new HumanEntry(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [personID]
    data.personID = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [personCentroidX]
    data.personCentroidX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [personCentroidY]
    data.personCentroidY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [personCentroidZ]
    data.personCentroidZ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [personBoundingBoxTopCenterX]
    data.personBoundingBoxTopCenterX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [personBoundingBoxTopCenterY]
    data.personBoundingBoxTopCenterY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [personBoundingBoxTopCenterZ]
    data.personBoundingBoxTopCenterZ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Xvelocity]
    data.Xvelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Yvelocity]
    data.Yvelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Zvelocity]
    data.Zvelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ROIwidth]
    data.ROIwidth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ROIheight]
    data.ROIheight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Xsigma]
    data.Xsigma = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Ysigma]
    data.Ysigma = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Zsigma]
    data.Zsigma = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opt_msgs/HumanEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62ab54a7d1e278036ce98ff633f1bef9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    uint64 personID
    float64 personCentroidX
    float64 personCentroidY
    float64 personCentroidZ
    float64 personBoundingBoxTopCenterX
    float64 personBoundingBoxTopCenterY
    float64 personBoundingBoxTopCenterZ
    float64 Xvelocity
    float64 Yvelocity
    float64 Zvelocity
    float64 ROIwidth
    float64 ROIheight
    float64 Xsigma
    float64 Ysigma
    float64 Zsigma
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanEntry(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.personID !== undefined) {
      resolved.personID = msg.personID;
    }
    else {
      resolved.personID = 0
    }

    if (msg.personCentroidX !== undefined) {
      resolved.personCentroidX = msg.personCentroidX;
    }
    else {
      resolved.personCentroidX = 0.0
    }

    if (msg.personCentroidY !== undefined) {
      resolved.personCentroidY = msg.personCentroidY;
    }
    else {
      resolved.personCentroidY = 0.0
    }

    if (msg.personCentroidZ !== undefined) {
      resolved.personCentroidZ = msg.personCentroidZ;
    }
    else {
      resolved.personCentroidZ = 0.0
    }

    if (msg.personBoundingBoxTopCenterX !== undefined) {
      resolved.personBoundingBoxTopCenterX = msg.personBoundingBoxTopCenterX;
    }
    else {
      resolved.personBoundingBoxTopCenterX = 0.0
    }

    if (msg.personBoundingBoxTopCenterY !== undefined) {
      resolved.personBoundingBoxTopCenterY = msg.personBoundingBoxTopCenterY;
    }
    else {
      resolved.personBoundingBoxTopCenterY = 0.0
    }

    if (msg.personBoundingBoxTopCenterZ !== undefined) {
      resolved.personBoundingBoxTopCenterZ = msg.personBoundingBoxTopCenterZ;
    }
    else {
      resolved.personBoundingBoxTopCenterZ = 0.0
    }

    if (msg.Xvelocity !== undefined) {
      resolved.Xvelocity = msg.Xvelocity;
    }
    else {
      resolved.Xvelocity = 0.0
    }

    if (msg.Yvelocity !== undefined) {
      resolved.Yvelocity = msg.Yvelocity;
    }
    else {
      resolved.Yvelocity = 0.0
    }

    if (msg.Zvelocity !== undefined) {
      resolved.Zvelocity = msg.Zvelocity;
    }
    else {
      resolved.Zvelocity = 0.0
    }

    if (msg.ROIwidth !== undefined) {
      resolved.ROIwidth = msg.ROIwidth;
    }
    else {
      resolved.ROIwidth = 0.0
    }

    if (msg.ROIheight !== undefined) {
      resolved.ROIheight = msg.ROIheight;
    }
    else {
      resolved.ROIheight = 0.0
    }

    if (msg.Xsigma !== undefined) {
      resolved.Xsigma = msg.Xsigma;
    }
    else {
      resolved.Xsigma = 0.0
    }

    if (msg.Ysigma !== undefined) {
      resolved.Ysigma = msg.Ysigma;
    }
    else {
      resolved.Ysigma = 0.0
    }

    if (msg.Zsigma !== undefined) {
      resolved.Zsigma = msg.Zsigma;
    }
    else {
      resolved.Zsigma = 0.0
    }

    return resolved;
    }
};

module.exports = HumanEntry;
