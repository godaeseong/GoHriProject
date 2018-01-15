// Auto-generated. Do not edit!

// (in-package mhri_social_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FaceDetection3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_of_detected = null;
      this.faces_pose = null;
      this.faces_image = null;
    }
    else {
      if (initObj.hasOwnProperty('num_of_detected')) {
        this.num_of_detected = initObj.num_of_detected
      }
      else {
        this.num_of_detected = 0;
      }
      if (initObj.hasOwnProperty('faces_pose')) {
        this.faces_pose = initObj.faces_pose
      }
      else {
        this.faces_pose = [];
      }
      if (initObj.hasOwnProperty('faces_image')) {
        this.faces_image = initObj.faces_image
      }
      else {
        this.faces_image = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaceDetection3D
    // Serialize message field [num_of_detected]
    bufferOffset = _serializer.int32(obj.num_of_detected, buffer, bufferOffset);
    // Serialize message field [faces_pose]
    // Serialize the length for message field [faces_pose]
    bufferOffset = _serializer.uint32(obj.faces_pose.length, buffer, bufferOffset);
    obj.faces_pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PointStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [faces_image]
    // Serialize the length for message field [faces_image]
    bufferOffset = _serializer.uint32(obj.faces_image.length, buffer, bufferOffset);
    obj.faces_image.forEach((val) => {
      bufferOffset = sensor_msgs.msg.Image.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaceDetection3D
    let len;
    let data = new FaceDetection3D(null);
    // Deserialize message field [num_of_detected]
    data.num_of_detected = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [faces_pose]
    // Deserialize array length for message field [faces_pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.faces_pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.faces_pose[i] = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [faces_image]
    // Deserialize array length for message field [faces_image]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.faces_image = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.faces_image[i] = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.faces_pose.forEach((val) => {
      length += geometry_msgs.msg.PointStamped.getMessageSize(val);
    });
    object.faces_image.forEach((val) => {
      length += sensor_msgs.msg.Image.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mhri_social_msgs/FaceDetection3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '038b473215491c8276c651727ebdf695';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 num_of_detected
    geometry_msgs/PointStamped[] faces_pose
    sensor_msgs/Image[] faces_image
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of cameara
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaceDetection3D(null);
    if (msg.num_of_detected !== undefined) {
      resolved.num_of_detected = msg.num_of_detected;
    }
    else {
      resolved.num_of_detected = 0
    }

    if (msg.faces_pose !== undefined) {
      resolved.faces_pose = new Array(msg.faces_pose.length);
      for (let i = 0; i < resolved.faces_pose.length; ++i) {
        resolved.faces_pose[i] = geometry_msgs.msg.PointStamped.Resolve(msg.faces_pose[i]);
      }
    }
    else {
      resolved.faces_pose = []
    }

    if (msg.faces_image !== undefined) {
      resolved.faces_image = new Array(msg.faces_image.length);
      for (let i = 0; i < resolved.faces_image.length; ++i) {
        resolved.faces_image[i] = sensor_msgs.msg.Image.Resolve(msg.faces_image[i]);
      }
    }
    else {
      resolved.faces_image = []
    }

    return resolved;
    }
};

module.exports = FaceDetection3D;
