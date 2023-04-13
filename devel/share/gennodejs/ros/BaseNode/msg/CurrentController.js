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

class CurrentController {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_controller = null;
      this.current_action = null;
      this.current_controller_priority = null;
      this.current_action_priority = null;
    }
    else {
      if (initObj.hasOwnProperty('current_controller')) {
        this.current_controller = initObj.current_controller
      }
      else {
        this.current_controller = '';
      }
      if (initObj.hasOwnProperty('current_action')) {
        this.current_action = initObj.current_action
      }
      else {
        this.current_action = '';
      }
      if (initObj.hasOwnProperty('current_controller_priority')) {
        this.current_controller_priority = initObj.current_controller_priority
      }
      else {
        this.current_controller_priority = 0;
      }
      if (initObj.hasOwnProperty('current_action_priority')) {
        this.current_action_priority = initObj.current_action_priority
      }
      else {
        this.current_action_priority = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentController
    // Serialize message field [current_controller]
    bufferOffset = _serializer.string(obj.current_controller, buffer, bufferOffset);
    // Serialize message field [current_action]
    bufferOffset = _serializer.string(obj.current_action, buffer, bufferOffset);
    // Serialize message field [current_controller_priority]
    bufferOffset = _serializer.uint64(obj.current_controller_priority, buffer, bufferOffset);
    // Serialize message field [current_action_priority]
    bufferOffset = _serializer.uint64(obj.current_action_priority, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentController
    let len;
    let data = new CurrentController(null);
    // Deserialize message field [current_controller]
    data.current_controller = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_action]
    data.current_action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_controller_priority]
    data.current_controller_priority = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [current_action_priority]
    data.current_action_priority = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.current_controller.length;
    length += object.current_action.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/CurrentController';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddc6babeedae6888528de73484291c2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string current_controller
    string current_action
    uint64 current_controller_priority
    uint64 current_action_priority
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentController(null);
    if (msg.current_controller !== undefined) {
      resolved.current_controller = msg.current_controller;
    }
    else {
      resolved.current_controller = ''
    }

    if (msg.current_action !== undefined) {
      resolved.current_action = msg.current_action;
    }
    else {
      resolved.current_action = ''
    }

    if (msg.current_controller_priority !== undefined) {
      resolved.current_controller_priority = msg.current_controller_priority;
    }
    else {
      resolved.current_controller_priority = 0
    }

    if (msg.current_action_priority !== undefined) {
      resolved.current_action_priority = msg.current_action_priority;
    }
    else {
      resolved.current_action_priority = 0
    }

    return resolved;
    }
};

module.exports = CurrentController;
