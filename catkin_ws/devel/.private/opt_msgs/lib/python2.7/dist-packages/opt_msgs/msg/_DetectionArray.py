# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from opt_msgs/DetectionArray.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import opt_msgs.msg
import std_msgs.msg

class DetectionArray(genpy.Message):
  _md5sum = "2be460a0a39ff0f809695e59da9d469e"
  _type = "opt_msgs/DetectionArray"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header

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
int32 height"""
  __slots__ = ['header','detections','intrinsic_matrix','confidence_type','image_type']
  _slot_types = ['std_msgs/Header','opt_msgs/Detection[]','float64[]','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,detections,intrinsic_matrix,confidence_type,image_type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DetectionArray, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.detections is None:
        self.detections = []
      if self.intrinsic_matrix is None:
        self.intrinsic_matrix = []
      if self.confidence_type is None:
        self.confidence_type = ''
      if self.image_type is None:
        self.image_type = ''
    else:
      self.header = std_msgs.msg.Header()
      self.detections = []
      self.intrinsic_matrix = []
      self.confidence_type = ''
      self.image_type = ''

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
      length = len(self.detections)
      buff.write(_struct_I.pack(length))
      for val1 in self.detections:
        _v1 = val1.box_3D
        _v2 = _v1.p1
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = _v1.p2
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = val1.box_2D
        _x = _v4
        buff.write(_get_struct_4i().pack(_x.x, _x.y, _x.width, _x.height))
        _v5 = val1.centroid
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = val1.bottom
        _x = _v6
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v7 = val1.top
        _x = _v7
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_3dB().pack(_x.height, _x.confidence, _x.distance, _x.occluded))
      length = len(self.intrinsic_matrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.intrinsic_matrix))
      _x = self.confidence_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.image_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      if self.detections is None:
        self.detections = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.detections = []
      for i in range(0, length):
        val1 = opt_msgs.msg.Detection()
        _v8 = val1.box_3D
        _v9 = _v8.p1
        _x = _v9
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v10 = _v8.p2
        _x = _v10
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v11 = val1.box_2D
        _x = _v11
        start = end
        end += 16
        (_x.x, _x.y, _x.width, _x.height,) = _get_struct_4i().unpack(str[start:end])
        _v12 = val1.centroid
        _x = _v12
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v13 = val1.bottom
        _x = _v13
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v14 = val1.top
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 25
        (_x.height, _x.confidence, _x.distance, _x.occluded,) = _get_struct_3dB().unpack(str[start:end])
        val1.occluded = bool(val1.occluded)
        self.detections.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.intrinsic_matrix = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.confidence_type = str[start:end].decode('utf-8')
      else:
        self.confidence_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image_type = str[start:end].decode('utf-8')
      else:
        self.image_type = str[start:end]
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
      length = len(self.detections)
      buff.write(_struct_I.pack(length))
      for val1 in self.detections:
        _v15 = val1.box_3D
        _v16 = _v15.p1
        _x = _v16
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v17 = _v15.p2
        _x = _v17
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v18 = val1.box_2D
        _x = _v18
        buff.write(_get_struct_4i().pack(_x.x, _x.y, _x.width, _x.height))
        _v19 = val1.centroid
        _x = _v19
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v20 = val1.bottom
        _x = _v20
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v21 = val1.top
        _x = _v21
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_3dB().pack(_x.height, _x.confidence, _x.distance, _x.occluded))
      length = len(self.intrinsic_matrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.intrinsic_matrix.tostring())
      _x = self.confidence_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.image_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      if self.detections is None:
        self.detections = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.detections = []
      for i in range(0, length):
        val1 = opt_msgs.msg.Detection()
        _v22 = val1.box_3D
        _v23 = _v22.p1
        _x = _v23
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v24 = _v22.p2
        _x = _v24
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v25 = val1.box_2D
        _x = _v25
        start = end
        end += 16
        (_x.x, _x.y, _x.width, _x.height,) = _get_struct_4i().unpack(str[start:end])
        _v26 = val1.centroid
        _x = _v26
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v27 = val1.bottom
        _x = _v27
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v28 = val1.top
        _x = _v28
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 25
        (_x.height, _x.confidence, _x.distance, _x.occluded,) = _get_struct_3dB().unpack(str[start:end])
        val1.occluded = bool(val1.occluded)
        self.detections.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.intrinsic_matrix = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.confidence_type = str[start:end].decode('utf-8')
      else:
        self.confidence_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image_type = str[start:end].decode('utf-8')
      else:
        self.image_type = str[start:end]
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
_struct_4i = None
def _get_struct_4i():
    global _struct_4i
    if _struct_4i is None:
        _struct_4i = struct.Struct("<4i")
    return _struct_4i
_struct_3dB = None
def _get_struct_3dB():
    global _struct_3dB
    if _struct_3dB is None:
        _struct_3dB = struct.Struct("<3dB")
    return _struct_3dB
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
