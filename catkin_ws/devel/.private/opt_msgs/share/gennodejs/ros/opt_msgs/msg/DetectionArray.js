// Auto-generated. Do not edit!

// (in-package opt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Detection = require('./Detection.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectionArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.detections = null;
      this.intrinsic_matrix = null;
      this.confidence_type = null;
      this.image_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('detections')) {
        this.detections = initObj.detections
      }
      else {
        this.detections = [];
      }
      if (initObj.hasOwnProperty('intrinsic_matrix')) {
        this.intrinsic_matrix = initObj.intrinsic_matrix
      }
      else {
        this.intrinsic_matrix = [];
      }
      if (initObj.hasOwnProperty('confidence_type')) {
        this.confidence_type = initObj.confidence_type
      }
      else {
        this.confidence_type = '';
      }
      if (initObj.hasOwnProperty('image_type')) {
        this.image_type = initObj.image_type
      }
      else {
        this.image_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [detections]
    // Serialize the length for message field [detections]
    bufferOffset = _serializer.uint32(obj.detections.length, buffer, bufferOffset);
    obj.detections.forEach((val) => {
      bufferOffset = Detection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [intrinsic_matrix]
    bufferOffset = _arraySerializer.float64(obj.intrinsic_matrix, buffer, bufferOffset, null);
    // Serialize message field [confidence_type]
    bufferOffset = _serializer.string(obj.confidence_type, buffer, bufferOffset);
    // Serialize message field [image_type]
    bufferOffset = _serializer.string(obj.image_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionArray
    let len;
    let data = new DetectionArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [detections]
    // Deserialize array length for message field [detections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detections[i] = Detection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [intrinsic_matrix]
    data.intrinsic_matrix = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [confidence_type]
    data.confidence_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image_type]
    data.image_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 161 * object.detections.length;
    length += 8 * object.intrinsic_matrix.length;
    length += object.confidence_type.length;
    length += object.image_type.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opt_msgs/DetectionArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2be460a0a39ff0f809695e59da9d469e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    opt_msgs/Detection[] detections
    float64[] intrinsic_matrix
    string confidence_type
    string image_type
    
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
    
    ================================================================================
    MSG: opt_msgs/Detection
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
    const resolved = new DetectionArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.detections !== undefined) {
      resolved.detections = new Array(msg.detections.length);
      for (let i = 0; i < resolved.detections.length; ++i) {
        resolved.detections[i] = Detection.Resolve(msg.detections[i]);
      }
    }
    else {
      resolved.detections = []
    }

    if (msg.intrinsic_matrix !== undefined) {
      resolved.intrinsic_matrix = msg.intrinsic_matrix;
    }
    else {
      resolved.intrinsic_matrix = []
    }

    if (msg.confidence_type !== undefined) {
      resolved.confidence_type = msg.confidence_type;
    }
    else {
      resolved.confidence_type = ''
    }

    if (msg.image_type !== undefined) {
      resolved.image_type = msg.image_type;
    }
    else {
      resolved.image_type = ''
    }

    return resolved;
    }
};

module.exports = DetectionArray;
