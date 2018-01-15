// Auto-generated. Do not edit!

// (in-package calibration_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Polynomial = require('../msg/Polynomial.js');
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class GetDeviceInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.requested_types = null;
    }
    else {
      if (initObj.hasOwnProperty('requested_types')) {
        this.requested_types = initObj.requested_types
      }
      else {
        this.requested_types = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceInfoRequest
    // Serialize message field [requested_types]
    bufferOffset = _serializer.uint8(obj.requested_types, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceInfoRequest
    let len;
    let data = new GetDeviceInfoRequest(null);
    // Deserialize message field [requested_types]
    data.requested_types = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'calibration_msgs/GetDeviceInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6f60ecc59db1ed6ee1a94d24359b6b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 INTENSITY=1
    uint8 DEPTH=2
    uint8 ALL=3
    
    uint8 requested_types
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDeviceInfoRequest(null);
    if (msg.requested_types !== undefined) {
      resolved.requested_types = msg.requested_types;
    }
    else {
      resolved.requested_types = 0
    }

    return resolved;
    }
};

// Constants for message
GetDeviceInfoRequest.Constants = {
  INTENSITY: 1,
  DEPTH: 2,
  ALL: 3,
}

class GetDeviceInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_types = null;
      this.camera_infos = null;
      this.error_polynomials = null;
      this.initial_transforms = null;
      this.fixed_transforms = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_types')) {
        this.sensor_types = initObj.sensor_types
      }
      else {
        this.sensor_types = [];
      }
      if (initObj.hasOwnProperty('camera_infos')) {
        this.camera_infos = initObj.camera_infos
      }
      else {
        this.camera_infos = [];
      }
      if (initObj.hasOwnProperty('error_polynomials')) {
        this.error_polynomials = initObj.error_polynomials
      }
      else {
        this.error_polynomials = [];
      }
      if (initObj.hasOwnProperty('initial_transforms')) {
        this.initial_transforms = initObj.initial_transforms
      }
      else {
        this.initial_transforms = [];
      }
      if (initObj.hasOwnProperty('fixed_transforms')) {
        this.fixed_transforms = initObj.fixed_transforms
      }
      else {
        this.fixed_transforms = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceInfoResponse
    // Serialize message field [sensor_types]
    bufferOffset = _arraySerializer.uint8(obj.sensor_types, buffer, bufferOffset, null);
    // Serialize message field [camera_infos]
    // Serialize the length for message field [camera_infos]
    bufferOffset = _serializer.uint32(obj.camera_infos.length, buffer, bufferOffset);
    obj.camera_infos.forEach((val) => {
      bufferOffset = sensor_msgs.msg.CameraInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [error_polynomials]
    // Serialize the length for message field [error_polynomials]
    bufferOffset = _serializer.uint32(obj.error_polynomials.length, buffer, bufferOffset);
    obj.error_polynomials.forEach((val) => {
      bufferOffset = Polynomial.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [initial_transforms]
    // Serialize the length for message field [initial_transforms]
    bufferOffset = _serializer.uint32(obj.initial_transforms.length, buffer, bufferOffset);
    obj.initial_transforms.forEach((val) => {
      bufferOffset = geometry_msgs.msg.TransformStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [fixed_transforms]
    // Serialize the length for message field [fixed_transforms]
    bufferOffset = _serializer.uint32(obj.fixed_transforms.length, buffer, bufferOffset);
    obj.fixed_transforms.forEach((val) => {
      bufferOffset = geometry_msgs.msg.TransformStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceInfoResponse
    let len;
    let data = new GetDeviceInfoResponse(null);
    // Deserialize message field [sensor_types]
    data.sensor_types = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [camera_infos]
    // Deserialize array length for message field [camera_infos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_infos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_infos[i] = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [error_polynomials]
    // Deserialize array length for message field [error_polynomials]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.error_polynomials = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.error_polynomials[i] = Polynomial.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [initial_transforms]
    // Deserialize array length for message field [initial_transforms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.initial_transforms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.initial_transforms[i] = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [fixed_transforms]
    // Deserialize array length for message field [fixed_transforms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fixed_transforms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fixed_transforms[i] = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sensor_types.length;
    object.camera_infos.forEach((val) => {
      length += sensor_msgs.msg.CameraInfo.getMessageSize(val);
    });
    object.error_polynomials.forEach((val) => {
      length += Polynomial.getMessageSize(val);
    });
    object.initial_transforms.forEach((val) => {
      length += geometry_msgs.msg.TransformStamped.getMessageSize(val);
    });
    object.fixed_transforms.forEach((val) => {
      length += geometry_msgs.msg.TransformStamped.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'calibration_msgs/GetDeviceInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36567c6fc9693d50cd05203e131a062f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 UNDEFINED=0
    uint8 INTENSITY=1
    uint8 DEPTH=2
    
    uint8[]                          sensor_types
    sensor_msgs/CameraInfo[]         camera_infos
    Polynomial[]                     error_polynomials
    
    geometry_msgs/TransformStamped[] initial_transforms
    geometry_msgs/TransformStamped[] fixed_transforms
    
    
    
    ================================================================================
    MSG: sensor_msgs/CameraInfo
    # This message defines meta information for a camera. It should be in a
    # camera namespace on topic "camera_info" and accompanied by up to five
    # image topics named:
    #
    #   image_raw - raw data from the camera driver, possibly Bayer encoded
    #   image            - monochrome, distorted
    #   image_color      - color, distorted
    #   image_rect       - monochrome, rectified
    #   image_rect_color - color, rectified
    #
    # The image_pipeline contains packages (image_proc, stereo_image_proc)
    # for producing the four processed image topics from image_raw and
    # camera_info. The meaning of the camera parameters are described in
    # detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
    #
    # The image_geometry package provides a user-friendly interface to
    # common operations using this meta information. If you want to, e.g.,
    # project a 3d point into image coordinates, we strongly recommend
    # using image_geometry.
    #
    # If the camera is uncalibrated, the matrices D, K, R, P should be left
    # zeroed out. In particular, clients may assume that K[0] == 0.0
    # indicates an uncalibrated camera.
    
    #######################################################################
    #                     Image acquisition info                          #
    #######################################################################
    
    # Time of image acquisition, camera coordinate frame ID
    Header header    # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into the plane of the image
    
    
    #######################################################################
    #                      Calibration Parameters                         #
    #######################################################################
    # These are fixed during camera calibration. Their values will be the #
    # same in all messages until the camera is recalibrated. Note that    #
    # self-calibrating systems may "recalibrate" frequently.              #
    #                                                                     #
    # The internal parameters can be used to warp a raw (distorted) image #
    # to:                                                                 #
    #   1. An undistorted image (requires D and K)                        #
    #   2. A rectified image (requires D, K, R)                           #
    # The projection matrix P projects 3D points into the rectified image.#
    #######################################################################
    
    # The image dimensions with which the camera was calibrated. Normally
    # this will be the full camera resolution in pixels.
    uint32 height
    uint32 width
    
    # The distortion model used. Supported models are listed in
    # sensor_msgs/distortion_models.h. For most cameras, "plumb_bob" - a
    # simple model of radial and tangential distortion - is sufficient.
    string distortion_model
    
    # The distortion parameters, size depending on the distortion model.
    # For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
    float64[] D
    
    # Intrinsic camera matrix for the raw (distorted) images.
    #     [fx  0 cx]
    # K = [ 0 fy cy]
    #     [ 0  0  1]
    # Projects 3D points in the camera coordinate frame to 2D pixel
    # coordinates using the focal lengths (fx, fy) and principal point
    # (cx, cy).
    float64[9]  K # 3x3 row-major matrix
    
    # Rectification matrix (stereo cameras only)
    # A rotation matrix aligning the camera coordinate system to the ideal
    # stereo image plane so that epipolar lines in both stereo images are
    # parallel.
    float64[9]  R # 3x3 row-major matrix
    
    # Projection/camera matrix
    #     [fx'  0  cx' Tx]
    # P = [ 0  fy' cy' Ty]
    #     [ 0   0   1   0]
    # By convention, this matrix specifies the intrinsic (camera) matrix
    #  of the processed (rectified) image. That is, the left 3x3 portion
    #  is the normal camera intrinsic matrix for the rectified image.
    # It projects 3D points in the camera coordinate frame to 2D pixel
    #  coordinates using the focal lengths (fx', fy') and principal point
    #  (cx', cy') - these may differ from the values in K.
    # For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
    #  also have R = the identity and P[1:3,1:3] = K.
    # For a stereo pair, the fourth column [Tx Ty 0]' is related to the
    #  position of the optical center of the second camera in the first
    #  camera's frame. We assume Tz = 0 so both cameras are in the same
    #  stereo image plane. The first camera always has Tx = Ty = 0. For
    #  the right (second) camera of a horizontal stereo pair, Ty = 0 and
    #  Tx = -fx' * B, where B is the baseline between the cameras.
    # Given a 3D point [X Y Z]', the projection (x, y) of the point onto
    #  the rectified image is given by:
    #  [u v w]' = P * [X Y Z 1]'
    #         x = u / w
    #         y = v / w
    #  This holds for both images of a stereo pair.
    float64[12] P # 3x4 row-major matrix
    
    
    #######################################################################
    #                      Operational Parameters                         #
    #######################################################################
    # These define the image region actually captured by the camera       #
    # driver. Although they affect the geometry of the output image, they #
    # may be changed freely without recalibrating the camera.             #
    #######################################################################
    
    # Binning refers here to any camera setting which combines rectangular
    #  neighborhoods of pixels into larger "super-pixels." It reduces the
    #  resolution of the output image to
    #  (width / binning_x) x (height / binning_y).
    # The default values binning_x = binning_y = 0 is considered the same
    #  as binning_x = binning_y = 1 (no subsampling).
    uint32 binning_x
    uint32 binning_y
    
    # Region of interest (subwindow of full camera resolution), given in
    #  full resolution (unbinned) image coordinates. A particular ROI
    #  always denotes the same window of pixels on the camera sensor,
    #  regardless of binning settings.
    # The default setting of roi (all values 0) is considered the same as
    #  full resolution (roi.width = width, roi.height = height).
    RegionOfInterest roi
    
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
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    ================================================================================
    MSG: calibration_msgs/Polynomial
    int32 max_degree
    int32 min_degree
    float64[] coefficients
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    const resolved = new GetDeviceInfoResponse(null);
    if (msg.sensor_types !== undefined) {
      resolved.sensor_types = msg.sensor_types;
    }
    else {
      resolved.sensor_types = []
    }

    if (msg.camera_infos !== undefined) {
      resolved.camera_infos = new Array(msg.camera_infos.length);
      for (let i = 0; i < resolved.camera_infos.length; ++i) {
        resolved.camera_infos[i] = sensor_msgs.msg.CameraInfo.Resolve(msg.camera_infos[i]);
      }
    }
    else {
      resolved.camera_infos = []
    }

    if (msg.error_polynomials !== undefined) {
      resolved.error_polynomials = new Array(msg.error_polynomials.length);
      for (let i = 0; i < resolved.error_polynomials.length; ++i) {
        resolved.error_polynomials[i] = Polynomial.Resolve(msg.error_polynomials[i]);
      }
    }
    else {
      resolved.error_polynomials = []
    }

    if (msg.initial_transforms !== undefined) {
      resolved.initial_transforms = new Array(msg.initial_transforms.length);
      for (let i = 0; i < resolved.initial_transforms.length; ++i) {
        resolved.initial_transforms[i] = geometry_msgs.msg.TransformStamped.Resolve(msg.initial_transforms[i]);
      }
    }
    else {
      resolved.initial_transforms = []
    }

    if (msg.fixed_transforms !== undefined) {
      resolved.fixed_transforms = new Array(msg.fixed_transforms.length);
      for (let i = 0; i < resolved.fixed_transforms.length; ++i) {
        resolved.fixed_transforms[i] = geometry_msgs.msg.TransformStamped.Resolve(msg.fixed_transforms[i]);
      }
    }
    else {
      resolved.fixed_transforms = []
    }

    return resolved;
    }
};

// Constants for message
GetDeviceInfoResponse.Constants = {
  UNDEFINED: 0,
  INTENSITY: 1,
  DEPTH: 2,
}

module.exports = {
  Request: GetDeviceInfoRequest,
  Response: GetDeviceInfoResponse,
  md5sum() { return 'da6eb3cec2613536c7b7d4f43941b1a0'; },
  datatype() { return 'calibration_msgs/GetDeviceInfo'; }
};
