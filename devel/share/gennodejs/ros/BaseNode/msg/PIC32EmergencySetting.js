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

class PIC32EmergencySetting {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ultrasonic_brake_enabled = null;
      this.emergency_button_enabled = null;
      this.bumper_brake_enabled = null;
      this.auto_dock_enabled = null;
      this.wheel_release_enabled = null;
      this.wheel_brake_enabled = null;
      this.ir_enabled = null;
      this.sonic_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('ultrasonic_brake_enabled')) {
        this.ultrasonic_brake_enabled = initObj.ultrasonic_brake_enabled
      }
      else {
        this.ultrasonic_brake_enabled = false;
      }
      if (initObj.hasOwnProperty('emergency_button_enabled')) {
        this.emergency_button_enabled = initObj.emergency_button_enabled
      }
      else {
        this.emergency_button_enabled = false;
      }
      if (initObj.hasOwnProperty('bumper_brake_enabled')) {
        this.bumper_brake_enabled = initObj.bumper_brake_enabled
      }
      else {
        this.bumper_brake_enabled = false;
      }
      if (initObj.hasOwnProperty('auto_dock_enabled')) {
        this.auto_dock_enabled = initObj.auto_dock_enabled
      }
      else {
        this.auto_dock_enabled = false;
      }
      if (initObj.hasOwnProperty('wheel_release_enabled')) {
        this.wheel_release_enabled = initObj.wheel_release_enabled
      }
      else {
        this.wheel_release_enabled = false;
      }
      if (initObj.hasOwnProperty('wheel_brake_enabled')) {
        this.wheel_brake_enabled = initObj.wheel_brake_enabled
      }
      else {
        this.wheel_brake_enabled = false;
      }
      if (initObj.hasOwnProperty('ir_enabled')) {
        this.ir_enabled = initObj.ir_enabled
      }
      else {
        this.ir_enabled = false;
      }
      if (initObj.hasOwnProperty('sonic_distance')) {
        this.sonic_distance = initObj.sonic_distance
      }
      else {
        this.sonic_distance = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PIC32EmergencySetting
    // Serialize message field [ultrasonic_brake_enabled]
    bufferOffset = _serializer.bool(obj.ultrasonic_brake_enabled, buffer, bufferOffset);
    // Serialize message field [emergency_button_enabled]
    bufferOffset = _serializer.bool(obj.emergency_button_enabled, buffer, bufferOffset);
    // Serialize message field [bumper_brake_enabled]
    bufferOffset = _serializer.bool(obj.bumper_brake_enabled, buffer, bufferOffset);
    // Serialize message field [auto_dock_enabled]
    bufferOffset = _serializer.bool(obj.auto_dock_enabled, buffer, bufferOffset);
    // Serialize message field [wheel_release_enabled]
    bufferOffset = _serializer.bool(obj.wheel_release_enabled, buffer, bufferOffset);
    // Serialize message field [wheel_brake_enabled]
    bufferOffset = _serializer.bool(obj.wheel_brake_enabled, buffer, bufferOffset);
    // Serialize message field [ir_enabled]
    bufferOffset = _serializer.bool(obj.ir_enabled, buffer, bufferOffset);
    // Serialize message field [sonic_distance]
    bufferOffset = _arraySerializer.float64(obj.sonic_distance, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PIC32EmergencySetting
    let len;
    let data = new PIC32EmergencySetting(null);
    // Deserialize message field [ultrasonic_brake_enabled]
    data.ultrasonic_brake_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_button_enabled]
    data.emergency_button_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bumper_brake_enabled]
    data.bumper_brake_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [auto_dock_enabled]
    data.auto_dock_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_release_enabled]
    data.wheel_release_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_brake_enabled]
    data.wheel_brake_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir_enabled]
    data.ir_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sonic_distance]
    data.sonic_distance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.sonic_distance.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/PIC32EmergencySetting';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3769897b20780c564a9f24a1698a3c0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ultrasonic_brake_enabled
    bool emergency_button_enabled
    bool bumper_brake_enabled
    bool auto_dock_enabled
    
    bool wheel_release_enabled
    bool wheel_brake_enabled
    
    bool ir_enabled
    
    
    float64[] sonic_distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PIC32EmergencySetting(null);
    if (msg.ultrasonic_brake_enabled !== undefined) {
      resolved.ultrasonic_brake_enabled = msg.ultrasonic_brake_enabled;
    }
    else {
      resolved.ultrasonic_brake_enabled = false
    }

    if (msg.emergency_button_enabled !== undefined) {
      resolved.emergency_button_enabled = msg.emergency_button_enabled;
    }
    else {
      resolved.emergency_button_enabled = false
    }

    if (msg.bumper_brake_enabled !== undefined) {
      resolved.bumper_brake_enabled = msg.bumper_brake_enabled;
    }
    else {
      resolved.bumper_brake_enabled = false
    }

    if (msg.auto_dock_enabled !== undefined) {
      resolved.auto_dock_enabled = msg.auto_dock_enabled;
    }
    else {
      resolved.auto_dock_enabled = false
    }

    if (msg.wheel_release_enabled !== undefined) {
      resolved.wheel_release_enabled = msg.wheel_release_enabled;
    }
    else {
      resolved.wheel_release_enabled = false
    }

    if (msg.wheel_brake_enabled !== undefined) {
      resolved.wheel_brake_enabled = msg.wheel_brake_enabled;
    }
    else {
      resolved.wheel_brake_enabled = false
    }

    if (msg.ir_enabled !== undefined) {
      resolved.ir_enabled = msg.ir_enabled;
    }
    else {
      resolved.ir_enabled = false
    }

    if (msg.sonic_distance !== undefined) {
      resolved.sonic_distance = msg.sonic_distance;
    }
    else {
      resolved.sonic_distance = []
    }

    return resolved;
    }
};

module.exports = PIC32EmergencySetting;
