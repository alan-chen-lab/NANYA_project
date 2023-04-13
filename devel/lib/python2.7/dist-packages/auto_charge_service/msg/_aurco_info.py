# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_charge_service/aurco_info.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class aurco_info(genpy.Message):
  _md5sum = "8e734168b30b8d8c8907e55348fd895a"
  _type = "auto_charge_service/aurco_info"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 x
float64 y
float64 z

float32 roll
float32 pitch
float32 yaw

bool get_aruco
bool not_get_aruco"""
  __slots__ = ['x','y','z','roll','pitch','yaw','get_aruco','not_get_aruco']
  _slot_types = ['float64','float64','float64','float32','float32','float32','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x,y,z,roll,pitch,yaw,get_aruco,not_get_aruco

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(aurco_info, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.roll is None:
        self.roll = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.get_aruco is None:
        self.get_aruco = False
      if self.not_get_aruco is None:
        self.not_get_aruco = False
    else:
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.roll = 0.
      self.pitch = 0.
      self.yaw = 0.
      self.get_aruco = False
      self.not_get_aruco = False

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
      buff.write(_get_struct_3d3f2B().pack(_x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw, _x.get_aruco, _x.not_get_aruco))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 38
      (_x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw, _x.get_aruco, _x.not_get_aruco,) = _get_struct_3d3f2B().unpack(str[start:end])
      self.get_aruco = bool(self.get_aruco)
      self.not_get_aruco = bool(self.not_get_aruco)
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
      buff.write(_get_struct_3d3f2B().pack(_x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw, _x.get_aruco, _x.not_get_aruco))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 38
      (_x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw, _x.get_aruco, _x.not_get_aruco,) = _get_struct_3d3f2B().unpack(str[start:end])
      self.get_aruco = bool(self.get_aruco)
      self.not_get_aruco = bool(self.not_get_aruco)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d3f2B = None
def _get_struct_3d3f2B():
    global _struct_3d3f2B
    if _struct_3d3f2B is None:
        _struct_3d3f2B = struct.Struct("<3d3f2B")
    return _struct_3d3f2B