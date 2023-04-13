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

class RGBLEDControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_red = null;
      this.start_green = null;
      this.start_blue = null;
      this.end_red = null;
      this.end_green = null;
      this.end_blue = null;
      this.transform_time = null;
      this.run_time = null;
    }
    else {
      if (initObj.hasOwnProperty('start_red')) {
        this.start_red = initObj.start_red
      }
      else {
        this.start_red = 0;
      }
      if (initObj.hasOwnProperty('start_green')) {
        this.start_green = initObj.start_green
      }
      else {
        this.start_green = 0;
      }
      if (initObj.hasOwnProperty('start_blue')) {
        this.start_blue = initObj.start_blue
      }
      else {
        this.start_blue = 0;
      }
      if (initObj.hasOwnProperty('end_red')) {
        this.end_red = initObj.end_red
      }
      else {
        this.end_red = 0;
      }
      if (initObj.hasOwnProperty('end_green')) {
        this.end_green = initObj.end_green
      }
      else {
        this.end_green = 0;
      }
      if (initObj.hasOwnProperty('end_blue')) {
        this.end_blue = initObj.end_blue
      }
      else {
        this.end_blue = 0;
      }
      if (initObj.hasOwnProperty('transform_time')) {
        this.transform_time = initObj.transform_time
      }
      else {
        this.transform_time = 0.0;
      }
      if (initObj.hasOwnProperty('run_time')) {
        this.run_time = initObj.run_time
      }
      else {
        this.run_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RGBLEDControl
    // Serialize message field [start_red]
    bufferOffset = _serializer.uint8(obj.start_red, buffer, bufferOffset);
    // Serialize message field [start_green]
    bufferOffset = _serializer.uint8(obj.start_green, buffer, bufferOffset);
    // Serialize message field [start_blue]
    bufferOffset = _serializer.uint8(obj.start_blue, buffer, bufferOffset);
    // Serialize message field [end_red]
    bufferOffset = _serializer.uint8(obj.end_red, buffer, bufferOffset);
    // Serialize message field [end_green]
    bufferOffset = _serializer.uint8(obj.end_green, buffer, bufferOffset);
    // Serialize message field [end_blue]
    bufferOffset = _serializer.uint8(obj.end_blue, buffer, bufferOffset);
    // Serialize message field [transform_time]
    bufferOffset = _serializer.float32(obj.transform_time, buffer, bufferOffset);
    // Serialize message field [run_time]
    bufferOffset = _serializer.float32(obj.run_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RGBLEDControl
    let len;
    let data = new RGBLEDControl(null);
    // Deserialize message field [start_red]
    data.start_red = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_green]
    data.start_green = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_blue]
    data.start_blue = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [end_red]
    data.end_red = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [end_green]
    data.end_green = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [end_blue]
    data.end_blue = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [transform_time]
    data.transform_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [run_time]
    data.run_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/RGBLEDControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4096ab5b30b2048afde4d3c5779fe493';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 start_red
    uint8 start_green
    uint8 start_blue
    uint8 end_red
    uint8 end_green
    uint8 end_blue
    float32 transform_time 
    float32 run_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RGBLEDControl(null);
    if (msg.start_red !== undefined) {
      resolved.start_red = msg.start_red;
    }
    else {
      resolved.start_red = 0
    }

    if (msg.start_green !== undefined) {
      resolved.start_green = msg.start_green;
    }
    else {
      resolved.start_green = 0
    }

    if (msg.start_blue !== undefined) {
      resolved.start_blue = msg.start_blue;
    }
    else {
      resolved.start_blue = 0
    }

    if (msg.end_red !== undefined) {
      resolved.end_red = msg.end_red;
    }
    else {
      resolved.end_red = 0
    }

    if (msg.end_green !== undefined) {
      resolved.end_green = msg.end_green;
    }
    else {
      resolved.end_green = 0
    }

    if (msg.end_blue !== undefined) {
      resolved.end_blue = msg.end_blue;
    }
    else {
      resolved.end_blue = 0
    }

    if (msg.transform_time !== undefined) {
      resolved.transform_time = msg.transform_time;
    }
    else {
      resolved.transform_time = 0.0
    }

    if (msg.run_time !== undefined) {
      resolved.run_time = msg.run_time;
    }
    else {
      resolved.run_time = 0.0
    }

    return resolved;
    }
};

module.exports = RGBLEDControl;
