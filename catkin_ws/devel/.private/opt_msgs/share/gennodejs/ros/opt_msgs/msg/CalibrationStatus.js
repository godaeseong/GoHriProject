// Auto-generated. Do not edit!

// (in-package opt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CalibrationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_ids = null;
      this.images_acquired = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensor_ids')) {
        this.sensor_ids = initObj.sensor_ids
      }
      else {
        this.sensor_ids = [];
      }
      if (initObj.hasOwnProperty('images_acquired')) {
        this.images_acquired = initObj.images_acquired
      }
      else {
        this.images_acquired = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalibrationStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_ids]
    bufferOffset = _arraySerializer.string(obj.sensor_ids, buffer, bufferOffset, null);
    // Serialize message field [images_acquired]
    bufferOffset = _arraySerializer.int32(obj.images_acquired, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalibrationStatus
    let len;
    let data = new CalibrationStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_ids]
    data.sensor_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [images_acquired]
    data.images_acquired = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.sensor_ids.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.images_acquired.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opt_msgs/CalibrationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6509d68338c010b3bb32d195f9fecfeb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string[] sensor_ids
    int32[] images_acquired
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalibrationStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensor_ids !== undefined) {
      resolved.sensor_ids = msg.sensor_ids;
    }
    else {
      resolved.sensor_ids = []
    }

    if (msg.images_acquired !== undefined) {
      resolved.images_acquired = msg.images_acquired;
    }
    else {
      resolved.images_acquired = []
    }

    return resolved;
    }
};

module.exports = CalibrationStatus;
