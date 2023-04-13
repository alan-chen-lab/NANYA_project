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

class DigitLEDControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_dig_led = null;
      this.right_dig_led = null;
      this.left_run_time = null;
      this.right_run_time = null;
    }
    else {
      if (initObj.hasOwnProperty('left_dig_led')) {
        this.left_dig_led = initObj.left_dig_led
      }
      else {
        this.left_dig_led = false;
      }
      if (initObj.hasOwnProperty('right_dig_led')) {
        this.right_dig_led = initObj.right_dig_led
      }
      else {
        this.right_dig_led = false;
      }
      if (initObj.hasOwnProperty('left_run_time')) {
        this.left_run_time = initObj.left_run_time
      }
      else {
        this.left_run_time = 0.0;
      }
      if (initObj.hasOwnProperty('right_run_time')) {
        this.right_run_time = initObj.right_run_time
      }
      else {
        this.right_run_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigitLEDControl
    // Serialize message field [left_dig_led]
    bufferOffset = _serializer.bool(obj.left_dig_led, buffer, bufferOffset);
    // Serialize message field [right_dig_led]
    bufferOffset = _serializer.bool(obj.right_dig_led, buffer, bufferOffset);
    // Serialize message field [left_run_time]
    bufferOffset = _serializer.float32(obj.left_run_time, buffer, bufferOffset);
    // Serialize message field [right_run_time]
    bufferOffset = _serializer.float32(obj.right_run_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigitLEDControl
    let len;
    let data = new DigitLEDControl(null);
    // Deserialize message field [left_dig_led]
    data.left_dig_led = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_dig_led]
    data.right_dig_led = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_run_time]
    data.left_run_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_run_time]
    data.right_run_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/DigitLEDControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fcb3983ee7f931b51ef2d1803e3ef6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool left_dig_led
    bool right_dig_led
    float32 left_run_time
    float32 right_run_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigitLEDControl(null);
    if (msg.left_dig_led !== undefined) {
      resolved.left_dig_led = msg.left_dig_led;
    }
    else {
      resolved.left_dig_led = false
    }

    if (msg.right_dig_led !== undefined) {
      resolved.right_dig_led = msg.right_dig_led;
    }
    else {
      resolved.right_dig_led = false
    }

    if (msg.left_run_time !== undefined) {
      resolved.left_run_time = msg.left_run_time;
    }
    else {
      resolved.left_run_time = 0.0
    }

    if (msg.right_run_time !== undefined) {
      resolved.right_run_time = msg.right_run_time;
    }
    else {
      resolved.right_run_time = 0.0
    }

    return resolved;
    }
};

module.exports = DigitLEDControl;
