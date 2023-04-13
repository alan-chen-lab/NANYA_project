// Auto-generated. Do not edit!

// (in-package BaseNode.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RGBLEDControl = require('./RGBLEDControl.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RGBLEDControlStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.led_color_control = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('led_color_control')) {
        this.led_color_control = initObj.led_color_control
      }
      else {
        this.led_color_control = new RGBLEDControl();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RGBLEDControlStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [led_color_control]
    bufferOffset = RGBLEDControl.serialize(obj.led_color_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RGBLEDControlStamped
    let len;
    let data = new RGBLEDControlStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [led_color_control]
    data.led_color_control = RGBLEDControl.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/RGBLEDControlStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3f7ba4866db5543a31814d27b747cd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    RGBLEDControl led_color_control
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: BaseNode/RGBLEDControl
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
    const resolved = new RGBLEDControlStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.led_color_control !== undefined) {
      resolved.led_color_control = RGBLEDControl.Resolve(msg.led_color_control)
    }
    else {
      resolved.led_color_control = new RGBLEDControl()
    }

    return resolved;
    }
};

module.exports = RGBLEDControlStamped;
