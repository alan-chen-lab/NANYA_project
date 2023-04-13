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

class MagnetReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cell = null;
    }
    else {
      if (initObj.hasOwnProperty('cell')) {
        this.cell = initObj.cell
      }
      else {
        this.cell = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagnetReport
    // Serialize message field [cell]
    bufferOffset = _arraySerializer.bool(obj.cell, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagnetReport
    let len;
    let data = new MagnetReport(null);
    // Deserialize message field [cell]
    data.cell = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cell.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/MagnetReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9f73b0509699f216ff940c7a6e46e63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] cell
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagnetReport(null);
    if (msg.cell !== undefined) {
      resolved.cell = msg.cell;
    }
    else {
      resolved.cell = []
    }

    return resolved;
    }
};

module.exports = MagnetReport;
