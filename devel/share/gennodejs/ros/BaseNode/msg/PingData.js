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

class PingData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pingSN = null;
      this.firmwareVer = null;
      this.deviceID = null;
      this.day_ = null;
      this.hour_ = null;
      this.min_ = null;
    }
    else {
      if (initObj.hasOwnProperty('pingSN')) {
        this.pingSN = initObj.pingSN
      }
      else {
        this.pingSN = '';
      }
      if (initObj.hasOwnProperty('firmwareVer')) {
        this.firmwareVer = initObj.firmwareVer
      }
      else {
        this.firmwareVer = '';
      }
      if (initObj.hasOwnProperty('deviceID')) {
        this.deviceID = initObj.deviceID
      }
      else {
        this.deviceID = '';
      }
      if (initObj.hasOwnProperty('day_')) {
        this.day_ = initObj.day_
      }
      else {
        this.day_ = 0;
      }
      if (initObj.hasOwnProperty('hour_')) {
        this.hour_ = initObj.hour_
      }
      else {
        this.hour_ = 0;
      }
      if (initObj.hasOwnProperty('min_')) {
        this.min_ = initObj.min_
      }
      else {
        this.min_ = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PingData
    // Serialize message field [pingSN]
    bufferOffset = _serializer.string(obj.pingSN, buffer, bufferOffset);
    // Serialize message field [firmwareVer]
    bufferOffset = _serializer.string(obj.firmwareVer, buffer, bufferOffset);
    // Serialize message field [deviceID]
    bufferOffset = _serializer.string(obj.deviceID, buffer, bufferOffset);
    // Serialize message field [day_]
    bufferOffset = _serializer.int32(obj.day_, buffer, bufferOffset);
    // Serialize message field [hour_]
    bufferOffset = _serializer.int32(obj.hour_, buffer, bufferOffset);
    // Serialize message field [min_]
    bufferOffset = _serializer.int32(obj.min_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PingData
    let len;
    let data = new PingData(null);
    // Deserialize message field [pingSN]
    data.pingSN = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [firmwareVer]
    data.firmwareVer = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [deviceID]
    data.deviceID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [day_]
    data.day_ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hour_]
    data.hour_ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [min_]
    data.min_ = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pingSN.length;
    length += object.firmwareVer.length;
    length += object.deviceID.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/PingData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9701021a69e4fdf80bdc15797b522e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pingSN
    string firmwareVer
    string deviceID
    int32 day_
    int32 hour_
    int32 min_
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PingData(null);
    if (msg.pingSN !== undefined) {
      resolved.pingSN = msg.pingSN;
    }
    else {
      resolved.pingSN = ''
    }

    if (msg.firmwareVer !== undefined) {
      resolved.firmwareVer = msg.firmwareVer;
    }
    else {
      resolved.firmwareVer = ''
    }

    if (msg.deviceID !== undefined) {
      resolved.deviceID = msg.deviceID;
    }
    else {
      resolved.deviceID = ''
    }

    if (msg.day_ !== undefined) {
      resolved.day_ = msg.day_;
    }
    else {
      resolved.day_ = 0
    }

    if (msg.hour_ !== undefined) {
      resolved.hour_ = msg.hour_;
    }
    else {
      resolved.hour_ = 0
    }

    if (msg.min_ !== undefined) {
      resolved.min_ = msg.min_;
    }
    else {
      resolved.min_ = 0
    }

    return resolved;
    }
};

module.exports = PingData;
