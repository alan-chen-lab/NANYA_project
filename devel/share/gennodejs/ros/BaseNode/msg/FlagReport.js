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

class FlagReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stop = null;
      this.walking_front = null;
      this.walking_back = null;
      this.rotating_left = null;
      this.rotating_right = null;
      this.wheel_control_mode_1 = null;
      this.wheel_control_mode_2 = null;
      this.wheel_control_mode_3 = null;
      this.wheel_brake_mode = null;
      this.wheel_release_mode = null;
      this.go_to_dock = null;
      this.dock_escape = null;
      this.do_not_charge = null;
      this.charging = null;
      this.charge_finish = null;
      this.fault_in_charge = null;
      this.stop_btn_hit = null;
      this.sleep_btn_hit = null;
    }
    else {
      if (initObj.hasOwnProperty('stop')) {
        this.stop = initObj.stop
      }
      else {
        this.stop = false;
      }
      if (initObj.hasOwnProperty('walking_front')) {
        this.walking_front = initObj.walking_front
      }
      else {
        this.walking_front = false;
      }
      if (initObj.hasOwnProperty('walking_back')) {
        this.walking_back = initObj.walking_back
      }
      else {
        this.walking_back = false;
      }
      if (initObj.hasOwnProperty('rotating_left')) {
        this.rotating_left = initObj.rotating_left
      }
      else {
        this.rotating_left = false;
      }
      if (initObj.hasOwnProperty('rotating_right')) {
        this.rotating_right = initObj.rotating_right
      }
      else {
        this.rotating_right = false;
      }
      if (initObj.hasOwnProperty('wheel_control_mode_1')) {
        this.wheel_control_mode_1 = initObj.wheel_control_mode_1
      }
      else {
        this.wheel_control_mode_1 = false;
      }
      if (initObj.hasOwnProperty('wheel_control_mode_2')) {
        this.wheel_control_mode_2 = initObj.wheel_control_mode_2
      }
      else {
        this.wheel_control_mode_2 = false;
      }
      if (initObj.hasOwnProperty('wheel_control_mode_3')) {
        this.wheel_control_mode_3 = initObj.wheel_control_mode_3
      }
      else {
        this.wheel_control_mode_3 = false;
      }
      if (initObj.hasOwnProperty('wheel_brake_mode')) {
        this.wheel_brake_mode = initObj.wheel_brake_mode
      }
      else {
        this.wheel_brake_mode = false;
      }
      if (initObj.hasOwnProperty('wheel_release_mode')) {
        this.wheel_release_mode = initObj.wheel_release_mode
      }
      else {
        this.wheel_release_mode = false;
      }
      if (initObj.hasOwnProperty('go_to_dock')) {
        this.go_to_dock = initObj.go_to_dock
      }
      else {
        this.go_to_dock = false;
      }
      if (initObj.hasOwnProperty('dock_escape')) {
        this.dock_escape = initObj.dock_escape
      }
      else {
        this.dock_escape = false;
      }
      if (initObj.hasOwnProperty('do_not_charge')) {
        this.do_not_charge = initObj.do_not_charge
      }
      else {
        this.do_not_charge = false;
      }
      if (initObj.hasOwnProperty('charging')) {
        this.charging = initObj.charging
      }
      else {
        this.charging = false;
      }
      if (initObj.hasOwnProperty('charge_finish')) {
        this.charge_finish = initObj.charge_finish
      }
      else {
        this.charge_finish = false;
      }
      if (initObj.hasOwnProperty('fault_in_charge')) {
        this.fault_in_charge = initObj.fault_in_charge
      }
      else {
        this.fault_in_charge = false;
      }
      if (initObj.hasOwnProperty('stop_btn_hit')) {
        this.stop_btn_hit = initObj.stop_btn_hit
      }
      else {
        this.stop_btn_hit = false;
      }
      if (initObj.hasOwnProperty('sleep_btn_hit')) {
        this.sleep_btn_hit = initObj.sleep_btn_hit
      }
      else {
        this.sleep_btn_hit = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlagReport
    // Serialize message field [stop]
    bufferOffset = _serializer.bool(obj.stop, buffer, bufferOffset);
    // Serialize message field [walking_front]
    bufferOffset = _serializer.bool(obj.walking_front, buffer, bufferOffset);
    // Serialize message field [walking_back]
    bufferOffset = _serializer.bool(obj.walking_back, buffer, bufferOffset);
    // Serialize message field [rotating_left]
    bufferOffset = _serializer.bool(obj.rotating_left, buffer, bufferOffset);
    // Serialize message field [rotating_right]
    bufferOffset = _serializer.bool(obj.rotating_right, buffer, bufferOffset);
    // Serialize message field [wheel_control_mode_1]
    bufferOffset = _serializer.bool(obj.wheel_control_mode_1, buffer, bufferOffset);
    // Serialize message field [wheel_control_mode_2]
    bufferOffset = _serializer.bool(obj.wheel_control_mode_2, buffer, bufferOffset);
    // Serialize message field [wheel_control_mode_3]
    bufferOffset = _serializer.bool(obj.wheel_control_mode_3, buffer, bufferOffset);
    // Serialize message field [wheel_brake_mode]
    bufferOffset = _serializer.bool(obj.wheel_brake_mode, buffer, bufferOffset);
    // Serialize message field [wheel_release_mode]
    bufferOffset = _serializer.bool(obj.wheel_release_mode, buffer, bufferOffset);
    // Serialize message field [go_to_dock]
    bufferOffset = _serializer.bool(obj.go_to_dock, buffer, bufferOffset);
    // Serialize message field [dock_escape]
    bufferOffset = _serializer.bool(obj.dock_escape, buffer, bufferOffset);
    // Serialize message field [do_not_charge]
    bufferOffset = _serializer.bool(obj.do_not_charge, buffer, bufferOffset);
    // Serialize message field [charging]
    bufferOffset = _serializer.bool(obj.charging, buffer, bufferOffset);
    // Serialize message field [charge_finish]
    bufferOffset = _serializer.bool(obj.charge_finish, buffer, bufferOffset);
    // Serialize message field [fault_in_charge]
    bufferOffset = _serializer.bool(obj.fault_in_charge, buffer, bufferOffset);
    // Serialize message field [stop_btn_hit]
    bufferOffset = _serializer.bool(obj.stop_btn_hit, buffer, bufferOffset);
    // Serialize message field [sleep_btn_hit]
    bufferOffset = _serializer.bool(obj.sleep_btn_hit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlagReport
    let len;
    let data = new FlagReport(null);
    // Deserialize message field [stop]
    data.stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [walking_front]
    data.walking_front = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [walking_back]
    data.walking_back = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rotating_left]
    data.rotating_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rotating_right]
    data.rotating_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_control_mode_1]
    data.wheel_control_mode_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_control_mode_2]
    data.wheel_control_mode_2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_control_mode_3]
    data.wheel_control_mode_3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_brake_mode]
    data.wheel_brake_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_release_mode]
    data.wheel_release_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [go_to_dock]
    data.go_to_dock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock_escape]
    data.dock_escape = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [do_not_charge]
    data.do_not_charge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charging]
    data.charging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charge_finish]
    data.charge_finish = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fault_in_charge]
    data.fault_in_charge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stop_btn_hit]
    data.stop_btn_hit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sleep_btn_hit]
    data.sleep_btn_hit = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/FlagReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd345398ab2289d85ecccc71f9593ce9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Move Direction
    bool stop
    bool walking_front
    bool walking_back
    bool rotating_left
    bool rotating_right
    
    # Robot Mode Flag
    bool wheel_control_mode_1
    bool wheel_control_mode_2
    bool wheel_control_mode_3
    bool wheel_brake_mode
    bool wheel_release_mode
    bool go_to_dock
    bool dock_escape
    
    # charge
    bool do_not_charge
    bool charging
    bool charge_finish
    bool fault_in_charge
    
    # Button
    bool stop_btn_hit
    bool sleep_btn_hit
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlagReport(null);
    if (msg.stop !== undefined) {
      resolved.stop = msg.stop;
    }
    else {
      resolved.stop = false
    }

    if (msg.walking_front !== undefined) {
      resolved.walking_front = msg.walking_front;
    }
    else {
      resolved.walking_front = false
    }

    if (msg.walking_back !== undefined) {
      resolved.walking_back = msg.walking_back;
    }
    else {
      resolved.walking_back = false
    }

    if (msg.rotating_left !== undefined) {
      resolved.rotating_left = msg.rotating_left;
    }
    else {
      resolved.rotating_left = false
    }

    if (msg.rotating_right !== undefined) {
      resolved.rotating_right = msg.rotating_right;
    }
    else {
      resolved.rotating_right = false
    }

    if (msg.wheel_control_mode_1 !== undefined) {
      resolved.wheel_control_mode_1 = msg.wheel_control_mode_1;
    }
    else {
      resolved.wheel_control_mode_1 = false
    }

    if (msg.wheel_control_mode_2 !== undefined) {
      resolved.wheel_control_mode_2 = msg.wheel_control_mode_2;
    }
    else {
      resolved.wheel_control_mode_2 = false
    }

    if (msg.wheel_control_mode_3 !== undefined) {
      resolved.wheel_control_mode_3 = msg.wheel_control_mode_3;
    }
    else {
      resolved.wheel_control_mode_3 = false
    }

    if (msg.wheel_brake_mode !== undefined) {
      resolved.wheel_brake_mode = msg.wheel_brake_mode;
    }
    else {
      resolved.wheel_brake_mode = false
    }

    if (msg.wheel_release_mode !== undefined) {
      resolved.wheel_release_mode = msg.wheel_release_mode;
    }
    else {
      resolved.wheel_release_mode = false
    }

    if (msg.go_to_dock !== undefined) {
      resolved.go_to_dock = msg.go_to_dock;
    }
    else {
      resolved.go_to_dock = false
    }

    if (msg.dock_escape !== undefined) {
      resolved.dock_escape = msg.dock_escape;
    }
    else {
      resolved.dock_escape = false
    }

    if (msg.do_not_charge !== undefined) {
      resolved.do_not_charge = msg.do_not_charge;
    }
    else {
      resolved.do_not_charge = false
    }

    if (msg.charging !== undefined) {
      resolved.charging = msg.charging;
    }
    else {
      resolved.charging = false
    }

    if (msg.charge_finish !== undefined) {
      resolved.charge_finish = msg.charge_finish;
    }
    else {
      resolved.charge_finish = false
    }

    if (msg.fault_in_charge !== undefined) {
      resolved.fault_in_charge = msg.fault_in_charge;
    }
    else {
      resolved.fault_in_charge = false
    }

    if (msg.stop_btn_hit !== undefined) {
      resolved.stop_btn_hit = msg.stop_btn_hit;
    }
    else {
      resolved.stop_btn_hit = false
    }

    if (msg.sleep_btn_hit !== undefined) {
      resolved.sleep_btn_hit = msg.sleep_btn_hit;
    }
    else {
      resolved.sleep_btn_hit = false
    }

    return resolved;
    }
};

module.exports = FlagReport;
