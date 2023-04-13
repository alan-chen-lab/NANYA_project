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

class RFIDReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RFIDNo = null;
      this.detect_status = null;
    }
    else {
      if (initObj.hasOwnProperty('RFIDNo')) {
        this.RFIDNo = initObj.RFIDNo
      }
      else {
        this.RFIDNo = '';
      }
      if (initObj.hasOwnProperty('detect_status')) {
        this.detect_status = initObj.detect_status
      }
      else {
        this.detect_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RFIDReport
    // Serialize message field [RFIDNo]
    bufferOffset = _serializer.string(obj.RFIDNo, buffer, bufferOffset);
    // Serialize message field [detect_status]
    bufferOffset = _serializer.bool(obj.detect_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RFIDReport
    let len;
    let data = new RFIDReport(null);
    // Deserialize message field [RFIDNo]
    data.RFIDNo = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detect_status]
    data.detect_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.RFIDNo.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/RFIDReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f5274ec60f335c39997a38a6d19ff0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string RFIDNo
    bool detect_status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RFIDReport(null);
    if (msg.RFIDNo !== undefined) {
      resolved.RFIDNo = msg.RFIDNo;
    }
    else {
      resolved.RFIDNo = ''
    }

    if (msg.detect_status !== undefined) {
      resolved.detect_status = msg.detect_status;
    }
    else {
      resolved.detect_status = false
    }

    return resolved;
    }
};

module.exports = RFIDReport;
