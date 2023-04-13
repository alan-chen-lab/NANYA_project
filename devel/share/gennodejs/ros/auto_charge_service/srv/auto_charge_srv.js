// Auto-generated. Do not edit!

// (in-package auto_charge_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class auto_charge_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_x = null;
      this.goal_y = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_x')) {
        this.goal_x = initObj.goal_x
      }
      else {
        this.goal_x = 0.0;
      }
      if (initObj.hasOwnProperty('goal_y')) {
        this.goal_y = initObj.goal_y
      }
      else {
        this.goal_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type auto_charge_srvRequest
    // Serialize message field [goal_x]
    bufferOffset = _serializer.float64(obj.goal_x, buffer, bufferOffset);
    // Serialize message field [goal_y]
    bufferOffset = _serializer.float64(obj.goal_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type auto_charge_srvRequest
    let len;
    let data = new auto_charge_srvRequest(null);
    // Deserialize message field [goal_x]
    data.goal_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goal_y]
    data.goal_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_charge_service/auto_charge_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13b965790a69b58a06825eaf607cdbe7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 goal_x
    float64 goal_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new auto_charge_srvRequest(null);
    if (msg.goal_x !== undefined) {
      resolved.goal_x = msg.goal_x;
    }
    else {
      resolved.goal_x = 0.0
    }

    if (msg.goal_y !== undefined) {
      resolved.goal_y = msg.goal_y;
    }
    else {
      resolved.goal_y = 0.0
    }

    return resolved;
    }
};

class auto_charge_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_x = null;
      this.goal_y = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_x')) {
        this.goal_x = initObj.goal_x
      }
      else {
        this.goal_x = 0.0;
      }
      if (initObj.hasOwnProperty('goal_y')) {
        this.goal_y = initObj.goal_y
      }
      else {
        this.goal_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type auto_charge_srvResponse
    // Serialize message field [goal_x]
    bufferOffset = _serializer.float64(obj.goal_x, buffer, bufferOffset);
    // Serialize message field [goal_y]
    bufferOffset = _serializer.float64(obj.goal_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type auto_charge_srvResponse
    let len;
    let data = new auto_charge_srvResponse(null);
    // Deserialize message field [goal_x]
    data.goal_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goal_y]
    data.goal_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_charge_service/auto_charge_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13b965790a69b58a06825eaf607cdbe7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 goal_x
    float64 goal_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new auto_charge_srvResponse(null);
    if (msg.goal_x !== undefined) {
      resolved.goal_x = msg.goal_x;
    }
    else {
      resolved.goal_x = 0.0
    }

    if (msg.goal_y !== undefined) {
      resolved.goal_y = msg.goal_y;
    }
    else {
      resolved.goal_y = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: auto_charge_srvRequest,
  Response: auto_charge_srvResponse,
  md5sum() { return '1fb8fd8311cc5d196025d0fcca8c666b'; },
  datatype() { return 'auto_charge_service/auto_charge_srv'; }
};
