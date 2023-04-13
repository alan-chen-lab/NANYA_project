// Auto-generated. Do not edit!

// (in-package BaseNode.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LEDReportRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_led = null;
    }
    else {
      if (initObj.hasOwnProperty('get_led')) {
        this.get_led = initObj.get_led
      }
      else {
        this.get_led = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDReportRequest
    // Serialize message field [get_led]
    bufferOffset = _serializer.bool(obj.get_led, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDReportRequest
    let len;
    let data = new LEDReportRequest(null);
    // Deserialize message field [get_led]
    data.get_led = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'BaseNode/LEDReportRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c530caba186c025e5a0f340c90b9d08c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool get_led
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDReportRequest(null);
    if (msg.get_led !== undefined) {
      resolved.get_led = msg.get_led;
    }
    else {
      resolved.get_led = false
    }

    return resolved;
    }
};

class LEDReportResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.red_led = null;
      this.green_led = null;
      this.blue_led = null;
      this.left_dig_led = null;
      this.right_dig_led = null;
    }
    else {
      if (initObj.hasOwnProperty('red_led')) {
        this.red_led = initObj.red_led
      }
      else {
        this.red_led = 0;
      }
      if (initObj.hasOwnProperty('green_led')) {
        this.green_led = initObj.green_led
      }
      else {
        this.green_led = 0;
      }
      if (initObj.hasOwnProperty('blue_led')) {
        this.blue_led = initObj.blue_led
      }
      else {
        this.blue_led = 0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDReportResponse
    // Serialize message field [red_led]
    bufferOffset = _serializer.uint8(obj.red_led, buffer, bufferOffset);
    // Serialize message field [green_led]
    bufferOffset = _serializer.uint8(obj.green_led, buffer, bufferOffset);
    // Serialize message field [blue_led]
    bufferOffset = _serializer.uint8(obj.blue_led, buffer, bufferOffset);
    // Serialize message field [left_dig_led]
    bufferOffset = _serializer.bool(obj.left_dig_led, buffer, bufferOffset);
    // Serialize message field [right_dig_led]
    bufferOffset = _serializer.bool(obj.right_dig_led, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDReportResponse
    let len;
    let data = new LEDReportResponse(null);
    // Deserialize message field [red_led]
    data.red_led = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [green_led]
    data.green_led = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [blue_led]
    data.blue_led = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_dig_led]
    data.left_dig_led = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_dig_led]
    data.right_dig_led = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'BaseNode/LEDReportResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2378127639e4cdf5ca0794bcb9a9083';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 red_led
    uint8 green_led
    uint8 blue_led
    bool left_dig_led
    bool right_dig_led
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDReportResponse(null);
    if (msg.red_led !== undefined) {
      resolved.red_led = msg.red_led;
    }
    else {
      resolved.red_led = 0
    }

    if (msg.green_led !== undefined) {
      resolved.green_led = msg.green_led;
    }
    else {
      resolved.green_led = 0
    }

    if (msg.blue_led !== undefined) {
      resolved.blue_led = msg.blue_led;
    }
    else {
      resolved.blue_led = 0
    }

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

    return resolved;
    }
};

module.exports = {
  Request: LEDReportRequest,
  Response: LEDReportResponse,
  md5sum() { return '5281860a67e91bcd8b35c89d74678b97'; },
  datatype() { return 'BaseNode/LEDReport'; }
};
