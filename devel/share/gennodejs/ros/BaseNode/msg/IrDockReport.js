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

class IrDockReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ir_left = null;
      this.ir_right = null;
      this.ir_left_stat = null;
      this.ir_right_stat = null;
    }
    else {
      if (initObj.hasOwnProperty('ir_left')) {
        this.ir_left = initObj.ir_left
      }
      else {
        this.ir_left = '';
      }
      if (initObj.hasOwnProperty('ir_right')) {
        this.ir_right = initObj.ir_right
      }
      else {
        this.ir_right = '';
      }
      if (initObj.hasOwnProperty('ir_left_stat')) {
        this.ir_left_stat = initObj.ir_left_stat
      }
      else {
        this.ir_left_stat = 0;
      }
      if (initObj.hasOwnProperty('ir_right_stat')) {
        this.ir_right_stat = initObj.ir_right_stat
      }
      else {
        this.ir_right_stat = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IrDockReport
    // Serialize message field [ir_left]
    bufferOffset = _serializer.string(obj.ir_left, buffer, bufferOffset);
    // Serialize message field [ir_right]
    bufferOffset = _serializer.string(obj.ir_right, buffer, bufferOffset);
    // Serialize message field [ir_left_stat]
    bufferOffset = _serializer.int32(obj.ir_left_stat, buffer, bufferOffset);
    // Serialize message field [ir_right_stat]
    bufferOffset = _serializer.int32(obj.ir_right_stat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IrDockReport
    let len;
    let data = new IrDockReport(null);
    // Deserialize message field [ir_left]
    data.ir_left = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ir_right]
    data.ir_right = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ir_left_stat]
    data.ir_left_stat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ir_right_stat]
    data.ir_right_stat = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ir_left.length;
    length += object.ir_right.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/IrDockReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '466bf0cbbf6c657c56a3177353abfb08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ir_left
    string ir_right
    int32 ir_left_stat
    int32 ir_right_stat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IrDockReport(null);
    if (msg.ir_left !== undefined) {
      resolved.ir_left = msg.ir_left;
    }
    else {
      resolved.ir_left = ''
    }

    if (msg.ir_right !== undefined) {
      resolved.ir_right = msg.ir_right;
    }
    else {
      resolved.ir_right = ''
    }

    if (msg.ir_left_stat !== undefined) {
      resolved.ir_left_stat = msg.ir_left_stat;
    }
    else {
      resolved.ir_left_stat = 0
    }

    if (msg.ir_right_stat !== undefined) {
      resolved.ir_right_stat = msg.ir_right_stat;
    }
    else {
      resolved.ir_right_stat = 0
    }

    return resolved;
    }
};

module.exports = IrDockReport;
