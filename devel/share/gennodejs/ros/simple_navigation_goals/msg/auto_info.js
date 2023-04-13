// Auto-generated. Do not edit!

// (in-package simple_navigation_goals.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class auto_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type auto_info
    // Serialize message field [info]
    bufferOffset = _serializer.bool(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type auto_info
    let len;
    let data = new auto_info(null);
    // Deserialize message field [info]
    data.info = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simple_navigation_goals/auto_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d497f9cf95d78ecfe2d84e8a1a7ad3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool info
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new auto_info(null);
    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = false
    }

    return resolved;
    }
};

module.exports = auto_info;
