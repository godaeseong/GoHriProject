# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from calibration_msgs/CheckerboardExtractionGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import calibration_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class CheckerboardExtractionGoal(genpy.Message):
  _md5sum = "6755a0628825fba080d03429f57f9f9e"
  _type = "calibration_msgs/CheckerboardExtractionGoal"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal

uint8 EXTRACT_FROM_NONE=0
uint8 EXTRACT_FROM_IMAGE=1
uint8 EXTRACT_FROM_DEPTH=2
uint8 EXTRACT_FROM_ALL=3

int32 ALL_POINTS=-1
int32 PLANE_ONLY=0

Header header

Checkerboard checkerboard
uint8 extract_from
int32 max_depth_points

# max_depth_points must be in the interval [3, +inf[
# or be one of the special values ALL_POINTS, PLANE_ONLY


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
MSG: calibration_msgs/Checkerboard
Header header

string parent_frame_id
geometry_msgs/Pose pose

uint32 rows
uint32 cols
float32 cell_width
float32 cell_height

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
"""
  # Pseudo-constants
  EXTRACT_FROM_NONE = 0
  EXTRACT_FROM_IMAGE = 1
  EXTRACT_FROM_DEPTH = 2
  EXTRACT_FROM_ALL = 3
  ALL_POINTS = -1
  PLANE_ONLY = 0

  __slots__ = ['header','checkerboard','extract_from','max_depth_points']
  _slot_types = ['std_msgs/Header','calibration_msgs/Checkerboard','uint8','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,checkerboard,extract_from,max_depth_points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CheckerboardExtractionGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.checkerboard is None:
        self.checkerboard = calibration_msgs.msg.Checkerboard()
      if self.extract_from is None:
        self.extract_from = 0
      if self.max_depth_points is None:
        self.max_depth_points = 0
    else:
      self.header = std_msgs.msg.Header()
      self.checkerboard = calibration_msgs.msg.Checkerboard()
      self.extract_from = 0
      self.max_depth_points = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.checkerboard.header.seq, _x.checkerboard.header.stamp.secs, _x.checkerboard.header.stamp.nsecs))
      _x = self.checkerboard.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.checkerboard.parent_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d2I2fBi().pack(_x.checkerboard.pose.position.x, _x.checkerboard.pose.position.y, _x.checkerboard.pose.position.z, _x.checkerboard.pose.orientation.x, _x.checkerboard.pose.orientation.y, _x.checkerboard.pose.orientation.z, _x.checkerboard.pose.orientation.w, _x.checkerboard.rows, _x.checkerboard.cols, _x.checkerboard.cell_width, _x.checkerboard.cell_height, _x.extract_from, _x.max_depth_points))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.checkerboard is None:
        self.checkerboard = calibration_msgs.msg.Checkerboard()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.checkerboard.header.seq, _x.checkerboard.header.stamp.secs, _x.checkerboard.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.checkerboard.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.checkerboard.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.checkerboard.parent_frame_id = str[start:end].decode('utf-8')
      else:
        self.checkerboard.parent_frame_id = str[start:end]
      _x = self
      start = end
      end += 77
      (_x.checkerboard.pose.position.x, _x.checkerboard.pose.position.y, _x.checkerboard.pose.position.z, _x.checkerboard.pose.orientation.x, _x.checkerboard.pose.orientation.y, _x.checkerboard.pose.orientation.z, _x.checkerboard.pose.orientation.w, _x.checkerboard.rows, _x.checkerboard.cols, _x.checkerboard.cell_width, _x.checkerboard.cell_height, _x.extract_from, _x.max_depth_points,) = _get_struct_7d2I2fBi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.checkerboard.header.seq, _x.checkerboard.header.stamp.secs, _x.checkerboard.header.stamp.nsecs))
      _x = self.checkerboard.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.checkerboard.parent_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d2I2fBi().pack(_x.checkerboard.pose.position.x, _x.checkerboard.pose.position.y, _x.checkerboard.pose.position.z, _x.checkerboard.pose.orientation.x, _x.checkerboard.pose.orientation.y, _x.checkerboard.pose.orientation.z, _x.checkerboard.pose.orientation.w, _x.checkerboard.rows, _x.checkerboard.cols, _x.checkerboard.cell_width, _x.checkerboard.cell_height, _x.extract_from, _x.max_depth_points))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.checkerboard is None:
        self.checkerboard = calibration_msgs.msg.Checkerboard()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.checkerboard.header.seq, _x.checkerboard.header.stamp.secs, _x.checkerboard.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.checkerboard.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.checkerboard.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.checkerboard.parent_frame_id = str[start:end].decode('utf-8')
      else:
        self.checkerboard.parent_frame_id = str[start:end]
      _x = self
      start = end
      end += 77
      (_x.checkerboard.pose.position.x, _x.checkerboard.pose.position.y, _x.checkerboard.pose.position.z, _x.checkerboard.pose.orientation.x, _x.checkerboard.pose.orientation.y, _x.checkerboard.pose.orientation.z, _x.checkerboard.pose.orientation.w, _x.checkerboard.rows, _x.checkerboard.cols, _x.checkerboard.cell_width, _x.checkerboard.cell_height, _x.extract_from, _x.max_depth_points,) = _get_struct_7d2I2fBi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_7d2I2fBi = None
def _get_struct_7d2I2fBi():
    global _struct_7d2I2fBi
    if _struct_7d2I2fBi is None:
        _struct_7d2I2fBi = struct.Struct("<7d2I2fBi")
    return _struct_7d2I2fBi