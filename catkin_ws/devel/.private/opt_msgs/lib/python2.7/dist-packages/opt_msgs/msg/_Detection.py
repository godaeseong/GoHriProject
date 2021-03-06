# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from opt_msgs/Detection.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import opt_msgs.msg

class Detection(genpy.Message):
  _md5sum = "f8c84b166dcde721bb56a043ef007291"
  _type = "opt_msgs/Detection"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """opt_msgs/BoundingBox3D box_3D
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
  __slots__ = ['box_3D','box_2D','centroid','bottom','top','height','confidence','distance','occluded']
  _slot_types = ['opt_msgs/BoundingBox3D','opt_msgs/BoundingBox2D','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3','float64','float64','float64','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       box_3D,box_2D,centroid,bottom,top,height,confidence,distance,occluded

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Detection, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.box_3D is None:
        self.box_3D = opt_msgs.msg.BoundingBox3D()
      if self.box_2D is None:
        self.box_2D = opt_msgs.msg.BoundingBox2D()
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Vector3()
      if self.bottom is None:
        self.bottom = geometry_msgs.msg.Vector3()
      if self.top is None:
        self.top = geometry_msgs.msg.Vector3()
      if self.height is None:
        self.height = 0.
      if self.confidence is None:
        self.confidence = 0.
      if self.distance is None:
        self.distance = 0.
      if self.occluded is None:
        self.occluded = False
    else:
      self.box_3D = opt_msgs.msg.BoundingBox3D()
      self.box_2D = opt_msgs.msg.BoundingBox2D()
      self.centroid = geometry_msgs.msg.Vector3()
      self.bottom = geometry_msgs.msg.Vector3()
      self.top = geometry_msgs.msg.Vector3()
      self.height = 0.
      self.confidence = 0.
      self.distance = 0.
      self.occluded = False

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
      buff.write(_get_struct_6d4i12dB().pack(_x.box_3D.p1.x, _x.box_3D.p1.y, _x.box_3D.p1.z, _x.box_3D.p2.x, _x.box_3D.p2.y, _x.box_3D.p2.z, _x.box_2D.x, _x.box_2D.y, _x.box_2D.width, _x.box_2D.height, _x.centroid.x, _x.centroid.y, _x.centroid.z, _x.bottom.x, _x.bottom.y, _x.bottom.z, _x.top.x, _x.top.y, _x.top.z, _x.height, _x.confidence, _x.distance, _x.occluded))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.box_3D is None:
        self.box_3D = opt_msgs.msg.BoundingBox3D()
      if self.box_2D is None:
        self.box_2D = opt_msgs.msg.BoundingBox2D()
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Vector3()
      if self.bottom is None:
        self.bottom = geometry_msgs.msg.Vector3()
      if self.top is None:
        self.top = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 161
      (_x.box_3D.p1.x, _x.box_3D.p1.y, _x.box_3D.p1.z, _x.box_3D.p2.x, _x.box_3D.p2.y, _x.box_3D.p2.z, _x.box_2D.x, _x.box_2D.y, _x.box_2D.width, _x.box_2D.height, _x.centroid.x, _x.centroid.y, _x.centroid.z, _x.bottom.x, _x.bottom.y, _x.bottom.z, _x.top.x, _x.top.y, _x.top.z, _x.height, _x.confidence, _x.distance, _x.occluded,) = _get_struct_6d4i12dB().unpack(str[start:end])
      self.occluded = bool(self.occluded)
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
      buff.write(_get_struct_6d4i12dB().pack(_x.box_3D.p1.x, _x.box_3D.p1.y, _x.box_3D.p1.z, _x.box_3D.p2.x, _x.box_3D.p2.y, _x.box_3D.p2.z, _x.box_2D.x, _x.box_2D.y, _x.box_2D.width, _x.box_2D.height, _x.centroid.x, _x.centroid.y, _x.centroid.z, _x.bottom.x, _x.bottom.y, _x.bottom.z, _x.top.x, _x.top.y, _x.top.z, _x.height, _x.confidence, _x.distance, _x.occluded))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.box_3D is None:
        self.box_3D = opt_msgs.msg.BoundingBox3D()
      if self.box_2D is None:
        self.box_2D = opt_msgs.msg.BoundingBox2D()
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Vector3()
      if self.bottom is None:
        self.bottom = geometry_msgs.msg.Vector3()
      if self.top is None:
        self.top = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 161
      (_x.box_3D.p1.x, _x.box_3D.p1.y, _x.box_3D.p1.z, _x.box_3D.p2.x, _x.box_3D.p2.y, _x.box_3D.p2.z, _x.box_2D.x, _x.box_2D.y, _x.box_2D.width, _x.box_2D.height, _x.centroid.x, _x.centroid.y, _x.centroid.z, _x.bottom.x, _x.bottom.y, _x.bottom.z, _x.top.x, _x.top.y, _x.top.z, _x.height, _x.confidence, _x.distance, _x.occluded,) = _get_struct_6d4i12dB().unpack(str[start:end])
      self.occluded = bool(self.occluded)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d4i12dB = None
def _get_struct_6d4i12dB():
    global _struct_6d4i12dB
    if _struct_6d4i12dB is None:
        _struct_6d4i12dB = struct.Struct("<6d4i12dB")
    return _struct_6d4i12dB
