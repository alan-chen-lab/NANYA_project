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

class RealSpeedData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_control_value = null;
      this.left_error_value = null;
      this.left_reference_speed_value = null;
      this.left_real_speed_value = null;
      this.left_output_PWM_value = null;
      this.left_brake_value = null;
      this.right_control_value = null;
      this.right_error_value = null;
      this.right_reference_speed_value = null;
      this.right_real_speed_value = null;
      this.right_output_PWM_value = null;
      this.right_brake_value = null;
    }
    else {
      if (initObj.hasOwnProperty('left_control_value')) {
        this.left_control_value = initObj.left_control_value
      }
      else {
        this.left_control_value = 0.0;
      }
      if (initObj.hasOwnProperty('left_error_value')) {
        this.left_error_value = initObj.left_error_value
      }
      else {
        this.left_error_value = 0.0;
      }
      if (initObj.hasOwnProperty('left_reference_speed_value')) {
        this.left_reference_speed_value = initObj.left_reference_speed_value
      }
      else {
        this.left_reference_speed_value = 0.0;
      }
      if (initObj.hasOwnProperty('left_real_speed_value')) {
        this.left_real_speed_value = initObj.left_real_speed_value
      }
      else {
        this.left_real_speed_value = 0.0;
      }
      if (initObj.hasOwnProperty('left_output_PWM_value')) {
        this.left_output_PWM_value = initObj.left_output_PWM_value
      }
      else {
        this.left_output_PWM_value = 0.0;
      }
      if (initObj.hasOwnProperty('left_brake_value')) {
        this.left_brake_value = initObj.left_brake_value
      }
      else {
        this.left_brake_value = 0.0;
      }
      if (initObj.hasOwnProperty('right_control_value')) {
        this.right_control_value = initObj.right_control_value
      }
      else {
        this.right_control_value = 0.0;
      }
      if (initObj.hasOwnProperty('right_error_value')) {
        this.right_error_value = initObj.right_error_value
      }
      else {
        this.right_error_value = 0.0;
      }
      if (initObj.hasOwnProperty('right_reference_speed_value')) {
        this.right_reference_speed_value = initObj.right_reference_speed_value
      }
      else {
        this.right_reference_speed_value = 0.0;
      }
      if (initObj.hasOwnProperty('right_real_speed_value')) {
        this.right_real_speed_value = initObj.right_real_speed_value
      }
      else {
        this.right_real_speed_value = 0.0;
      }
      if (initObj.hasOwnProperty('right_output_PWM_value')) {
        this.right_output_PWM_value = initObj.right_output_PWM_value
      }
      else {
        this.right_output_PWM_value = 0.0;
      }
      if (initObj.hasOwnProperty('right_brake_value')) {
        this.right_brake_value = initObj.right_brake_value
      }
      else {
        this.right_brake_value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RealSpeedData
    // Serialize message field [left_control_value]
    bufferOffset = _serializer.float32(obj.left_control_value, buffer, bufferOffset);
    // Serialize message field [left_error_value]
    bufferOffset = _serializer.float32(obj.left_error_value, buffer, bufferOffset);
    // Serialize message field [left_reference_speed_value]
    bufferOffset = _serializer.float32(obj.left_reference_speed_value, buffer, bufferOffset);
    // Serialize message field [left_real_speed_value]
    bufferOffset = _serializer.float32(obj.left_real_speed_value, buffer, bufferOffset);
    // Serialize message field [left_output_PWM_value]
    bufferOffset = _serializer.float32(obj.left_output_PWM_value, buffer, bufferOffset);
    // Serialize message field [left_brake_value]
    bufferOffset = _serializer.float32(obj.left_brake_value, buffer, bufferOffset);
    // Serialize message field [right_control_value]
    bufferOffset = _serializer.float32(obj.right_control_value, buffer, bufferOffset);
    // Serialize message field [right_error_value]
    bufferOffset = _serializer.float32(obj.right_error_value, buffer, bufferOffset);
    // Serialize message field [right_reference_speed_value]
    bufferOffset = _serializer.float32(obj.right_reference_speed_value, buffer, bufferOffset);
    // Serialize message field [right_real_speed_value]
    bufferOffset = _serializer.float32(obj.right_real_speed_value, buffer, bufferOffset);
    // Serialize message field [right_output_PWM_value]
    bufferOffset = _serializer.float32(obj.right_output_PWM_value, buffer, bufferOffset);
    // Serialize message field [right_brake_value]
    bufferOffset = _serializer.float32(obj.right_brake_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RealSpeedData
    let len;
    let data = new RealSpeedData(null);
    // Deserialize message field [left_control_value]
    data.left_control_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_error_value]
    data.left_error_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_reference_speed_value]
    data.left_reference_speed_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_real_speed_value]
    data.left_real_speed_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_output_PWM_value]
    data.left_output_PWM_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_brake_value]
    data.left_brake_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_control_value]
    data.right_control_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_error_value]
    data.right_error_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_reference_speed_value]
    data.right_reference_speed_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_real_speed_value]
    data.right_real_speed_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_output_PWM_value]
    data.right_output_PWM_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_brake_value]
    data.right_brake_value = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/RealSpeedData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af4042522846a38590d01848f45d1cda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 left_control_value
    float32 left_error_value
    float32 left_reference_speed_value
    float32 left_real_speed_value
    float32 left_output_PWM_value
    float32 left_brake_value
    float32 right_control_value
    float32 right_error_value
    float32 right_reference_speed_value
    float32 right_real_speed_value
    float32 right_output_PWM_value
    float32 right_brake_value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RealSpeedData(null);
    if (msg.left_control_value !== undefined) {
      resolved.left_control_value = msg.left_control_value;
    }
    else {
      resolved.left_control_value = 0.0
    }

    if (msg.left_error_value !== undefined) {
      resolved.left_error_value = msg.left_error_value;
    }
    else {
      resolved.left_error_value = 0.0
    }

    if (msg.left_reference_speed_value !== undefined) {
      resolved.left_reference_speed_value = msg.left_reference_speed_value;
    }
    else {
      resolved.left_reference_speed_value = 0.0
    }

    if (msg.left_real_speed_value !== undefined) {
      resolved.left_real_speed_value = msg.left_real_speed_value;
    }
    else {
      resolved.left_real_speed_value = 0.0
    }

    if (msg.left_output_PWM_value !== undefined) {
      resolved.left_output_PWM_value = msg.left_output_PWM_value;
    }
    else {
      resolved.left_output_PWM_value = 0.0
    }

    if (msg.left_brake_value !== undefined) {
      resolved.left_brake_value = msg.left_brake_value;
    }
    else {
      resolved.left_brake_value = 0.0
    }

    if (msg.right_control_value !== undefined) {
      resolved.right_control_value = msg.right_control_value;
    }
    else {
      resolved.right_control_value = 0.0
    }

    if (msg.right_error_value !== undefined) {
      resolved.right_error_value = msg.right_error_value;
    }
    else {
      resolved.right_error_value = 0.0
    }

    if (msg.right_reference_speed_value !== undefined) {
      resolved.right_reference_speed_value = msg.right_reference_speed_value;
    }
    else {
      resolved.right_reference_speed_value = 0.0
    }

    if (msg.right_real_speed_value !== undefined) {
      resolved.right_real_speed_value = msg.right_real_speed_value;
    }
    else {
      resolved.right_real_speed_value = 0.0
    }

    if (msg.right_output_PWM_value !== undefined) {
      resolved.right_output_PWM_value = msg.right_output_PWM_value;
    }
    else {
      resolved.right_output_PWM_value = 0.0
    }

    if (msg.right_brake_value !== undefined) {
      resolved.right_brake_value = msg.right_brake_value;
    }
    else {
      resolved.right_brake_value = 0.0
    }

    return resolved;
    }
};

module.exports = RealSpeedData;
