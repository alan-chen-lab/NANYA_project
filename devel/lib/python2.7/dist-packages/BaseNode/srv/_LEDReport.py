# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from BaseNode/LEDReportRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LEDReportRequest(genpy.Message):
  _md5sum = "c530caba186c025e5a0f340c90b9d08c"
  _type = "BaseNode/LEDReportRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool get_led
"""
  __slots__ = ['get_led']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       get_led

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LEDReportRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.get_led is None:
        self.get_led = False
    else:
      self.get_led = False

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
      buff.write(_get_struct_B().pack(self.get_led))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.get_led,) = _get_struct_B().unpack(str[start:end])
      self.get_led = bool(self.get_led)
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
      buff.write(_get_struct_B().pack(self.get_led))
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
      start = end
      end += 1
      (self.get_led,) = _get_struct_B().unpack(str[start:end])
      self.get_led = bool(self.get_led)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from BaseNode/LEDReportResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LEDReportResponse(genpy.Message):
  _md5sum = "e2378127639e4cdf5ca0794bcb9a9083"
  _type = "BaseNode/LEDReportResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 red_led
uint8 green_led
uint8 blue_led
bool left_dig_led
bool right_dig_led

"""
  __slots__ = ['red_led','green_led','blue_led','left_dig_led','right_dig_led']
  _slot_types = ['uint8','uint8','uint8','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       red_led,green_led,blue_led,left_dig_led,right_dig_led

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LEDReportResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.red_led is None:
        self.red_led = 0
      if self.green_led is None:
        self.green_led = 0
      if self.blue_led is None:
        self.blue_led = 0
      if self.left_dig_led is None:
        self.left_dig_led = False
      if self.right_dig_led is None:
        self.right_dig_led = False
    else:
      self.red_led = 0
      self.green_led = 0
      self.blue_led = 0
      self.left_dig_led = False
      self.right_dig_led = False

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
      buff.write(_get_struct_5B().pack(_x.red_led, _x.green_led, _x.blue_led, _x.left_dig_led, _x.right_dig_led))
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
      end += 5
      (_x.red_led, _x.green_led, _x.blue_led, _x.left_dig_led, _x.right_dig_led,) = _get_struct_5B().unpack(str[start:end])
      self.left_dig_led = bool(self.left_dig_led)
      self.right_dig_led = bool(self.right_dig_led)
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
      buff.write(_get_struct_5B().pack(_x.red_led, _x.green_led, _x.blue_led, _x.left_dig_led, _x.right_dig_led))
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
      end += 5
      (_x.red_led, _x.green_led, _x.blue_led, _x.left_dig_led, _x.right_dig_led,) = _get_struct_5B().unpack(str[start:end])
      self.left_dig_led = bool(self.left_dig_led)
      self.right_dig_led = bool(self.right_dig_led)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5B = None
def _get_struct_5B():
    global _struct_5B
    if _struct_5B is None:
        _struct_5B = struct.Struct("<5B")
    return _struct_5B
class LEDReport(object):
  _type          = 'BaseNode/LEDReport'
  _md5sum = '5281860a67e91bcd8b35c89d74678b97'
  _request_class  = LEDReportRequest
  _response_class = LEDReportResponse