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

class AutoDockStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.charge_status = null;
      this.charge_stat_1 = null;
      this.charge_stat_2 = null;
      this.charge_dock_up = null;
      this.dock_error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('charge_status')) {
        this.charge_status = initObj.charge_status
      }
      else {
        this.charge_status = 0;
      }
      if (initObj.hasOwnProperty('charge_stat_1')) {
        this.charge_stat_1 = initObj.charge_stat_1
      }
      else {
        this.charge_stat_1 = 0;
      }
      if (initObj.hasOwnProperty('charge_stat_2')) {
        this.charge_stat_2 = initObj.charge_stat_2
      }
      else {
        this.charge_stat_2 = 0;
      }
      if (initObj.hasOwnProperty('charge_dock_up')) {
        this.charge_dock_up = initObj.charge_dock_up
      }
      else {
        this.charge_dock_up = 0;
      }
      if (initObj.hasOwnProperty('dock_error_message')) {
        this.dock_error_message = initObj.dock_error_message
      }
      else {
        this.dock_error_message = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutoDockStatus
    // Serialize message field [charge_status]
    bufferOffset = _serializer.int32(obj.charge_status, buffer, bufferOffset);
    // Serialize message field [charge_stat_1]
    bufferOffset = _serializer.int32(obj.charge_stat_1, buffer, bufferOffset);
    // Serialize message field [charge_stat_2]
    bufferOffset = _serializer.int32(obj.charge_stat_2, buffer, bufferOffset);
    // Serialize message field [charge_dock_up]
    bufferOffset = _serializer.int32(obj.charge_dock_up, buffer, bufferOffset);
    // Serialize message field [dock_error_message]
    bufferOffset = _serializer.int32(obj.dock_error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoDockStatus
    let len;
    let data = new AutoDockStatus(null);
    // Deserialize message field [charge_status]
    data.charge_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charge_stat_1]
    data.charge_stat_1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charge_stat_2]
    data.charge_stat_2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charge_dock_up]
    data.charge_dock_up = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dock_error_message]
    data.dock_error_message = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/AutoDockStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9901a3dd8e5c795bffd793bfc0e7fda6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 charge_status
    int32 charge_stat_1
    int32 charge_stat_2
    int32 charge_dock_up
    int32 dock_error_message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutoDockStatus(null);
    if (msg.charge_status !== undefined) {
      resolved.charge_status = msg.charge_status;
    }
    else {
      resolved.charge_status = 0
    }

    if (msg.charge_stat_1 !== undefined) {
      resolved.charge_stat_1 = msg.charge_stat_1;
    }
    else {
      resolved.charge_stat_1 = 0
    }

    if (msg.charge_stat_2 !== undefined) {
      resolved.charge_stat_2 = msg.charge_stat_2;
    }
    else {
      resolved.charge_stat_2 = 0
    }

    if (msg.charge_dock_up !== undefined) {
      resolved.charge_dock_up = msg.charge_dock_up;
    }
    else {
      resolved.charge_dock_up = 0
    }

    if (msg.dock_error_message !== undefined) {
      resolved.dock_error_message = msg.dock_error_message;
    }
    else {
      resolved.dock_error_message = 0
    }

    return resolved;
    }
};

module.exports = AutoDockStatus;
