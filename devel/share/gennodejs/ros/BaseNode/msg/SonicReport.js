// Auto-generated. Do not edit!

// (in-package BaseNode.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SonicReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sonic_too_close = null;
    }
    else {
      if (initObj.hasOwnProperty('sonic_too_close')) {
        this.sonic_too_close = initObj.sonic_too_close
      }
      else {
        this.sonic_too_close = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonicReport
    // Serialize message field [sonic_too_close]
    bufferOffset = _arraySerializer.bool(obj.sonic_too_close, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonicReport
    let len;
    let data = new SonicReport(null);
    // Deserialize message field [sonic_too_close]
    data.sonic_too_close = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sonic_too_close.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/SonicReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e85b346da5a184206999e10ccebec12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] sonic_too_close
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonicReport(null);
    if (msg.sonic_too_close !== undefined) {
      resolved.sonic_too_close = msg.sonic_too_close;
    }
    else {
      resolved.sonic_too_close = []
    }

    return resolved;
    }
};

module.exports = SonicReport;
