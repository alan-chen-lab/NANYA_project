// Auto-generated. Do not edit!

// (in-package simple_navigation_goals.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class multi_pointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_goal = null;
      this.y_goal = null;
      this.theta_goal = null;
      this.sec_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('x_goal')) {
        this.x_goal = initObj.x_goal
      }
      else {
        this.x_goal = [];
      }
      if (initObj.hasOwnProperty('y_goal')) {
        this.y_goal = initObj.y_goal
      }
      else {
        this.y_goal = [];
      }
      if (initObj.hasOwnProperty('theta_goal')) {
        this.theta_goal = initObj.theta_goal
      }
      else {
        this.theta_goal = [];
      }
      if (initObj.hasOwnProperty('sec_goal')) {
        this.sec_goal = initObj.sec_goal
      }
      else {
        this.sec_goal = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type multi_pointRequest
    // Serialize message field [x_goal]
    bufferOffset = _arraySerializer.float32(obj.x_goal, buffer, bufferOffset, null);
    // Serialize message field [y_goal]
    bufferOffset = _arraySerializer.float32(obj.y_goal, buffer, bufferOffset, null);
    // Serialize message field [theta_goal]
    bufferOffset = _arraySerializer.float32(obj.theta_goal, buffer, bufferOffset, null);
    // Serialize message field [sec_goal]
    bufferOffset = _arraySerializer.float32(obj.sec_goal, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type multi_pointRequest
    let len;
    let data = new multi_pointRequest(null);
    // Deserialize message field [x_goal]
    data.x_goal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y_goal]
    data.y_goal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [theta_goal]
    data.theta_goal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sec_goal]
    data.sec_goal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.x_goal.length;
    length += 4 * object.y_goal.length;
    length += 4 * object.theta_goal.length;
    length += 4 * object.sec_goal.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_navigation_goals/multi_pointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b704f6ee097e81a8f91ed62b6e798c5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] x_goal
    float32[] y_goal
    float32[] theta_goal
    float32[] sec_goal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new multi_pointRequest(null);
    if (msg.x_goal !== undefined) {
      resolved.x_goal = msg.x_goal;
    }
    else {
      resolved.x_goal = []
    }

    if (msg.y_goal !== undefined) {
      resolved.y_goal = msg.y_goal;
    }
    else {
      resolved.y_goal = []
    }

    if (msg.theta_goal !== undefined) {
      resolved.theta_goal = msg.theta_goal;
    }
    else {
      resolved.theta_goal = []
    }

    if (msg.sec_goal !== undefined) {
      resolved.sec_goal = msg.sec_goal;
    }
    else {
      resolved.sec_goal = []
    }

    return resolved;
    }
};

class multi_pointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type multi_pointResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type multi_pointResponse
    let len;
    let data = new multi_pointResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_navigation_goals/multi_pointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new multi_pointResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: multi_pointRequest,
  Response: multi_pointResponse,
  md5sum() { return 'b704f6ee097e81a8f91ed62b6e798c5d'; },
  datatype() { return 'simple_navigation_goals/multi_point'; }
};
