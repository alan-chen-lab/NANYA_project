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

class GetObstacleDistanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObstacleDistanceRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObstacleDistanceRequest
    let len;
    let data = new GetObstacleDistanceRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'BaseNode/GetObstacleDistanceRequest';
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
    const resolved = new GetObstacleDistanceRequest(null);
    return resolved;
    }
};

class GetObstacleDistanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.USDis0 = null;
      this.USDis1 = null;
      this.USDis2 = null;
      this.USDis3 = null;
      this.USDis4 = null;
      this.USDis5 = null;
      this.USDis6 = null;
    }
    else {
      if (initObj.hasOwnProperty('USDis0')) {
        this.USDis0 = initObj.USDis0
      }
      else {
        this.USDis0 = 0;
      }
      if (initObj.hasOwnProperty('USDis1')) {
        this.USDis1 = initObj.USDis1
      }
      else {
        this.USDis1 = 0;
      }
      if (initObj.hasOwnProperty('USDis2')) {
        this.USDis2 = initObj.USDis2
      }
      else {
        this.USDis2 = 0;
      }
      if (initObj.hasOwnProperty('USDis3')) {
        this.USDis3 = initObj.USDis3
      }
      else {
        this.USDis3 = 0;
      }
      if (initObj.hasOwnProperty('USDis4')) {
        this.USDis4 = initObj.USDis4
      }
      else {
        this.USDis4 = 0;
      }
      if (initObj.hasOwnProperty('USDis5')) {
        this.USDis5 = initObj.USDis5
      }
      else {
        this.USDis5 = 0;
      }
      if (initObj.hasOwnProperty('USDis6')) {
        this.USDis6 = initObj.USDis6
      }
      else {
        this.USDis6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObstacleDistanceResponse
    // Serialize message field [USDis0]
    bufferOffset = _serializer.uint8(obj.USDis0, buffer, bufferOffset);
    // Serialize message field [USDis1]
    bufferOffset = _serializer.uint8(obj.USDis1, buffer, bufferOffset);
    // Serialize message field [USDis2]
    bufferOffset = _serializer.uint8(obj.USDis2, buffer, bufferOffset);
    // Serialize message field [USDis3]
    bufferOffset = _serializer.uint8(obj.USDis3, buffer, bufferOffset);
    // Serialize message field [USDis4]
    bufferOffset = _serializer.uint8(obj.USDis4, buffer, bufferOffset);
    // Serialize message field [USDis5]
    bufferOffset = _serializer.uint8(obj.USDis5, buffer, bufferOffset);
    // Serialize message field [USDis6]
    bufferOffset = _serializer.uint8(obj.USDis6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObstacleDistanceResponse
    let len;
    let data = new GetObstacleDistanceResponse(null);
    // Deserialize message field [USDis0]
    data.USDis0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [USDis1]
    data.USDis1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [USDis2]
    data.USDis2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [USDis3]
    data.USDis3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [USDis4]
    data.USDis4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [USDis5]
    data.USDis5 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [USDis6]
    data.USDis6 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'BaseNode/GetObstacleDistanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01f181dd22773f5f5fa03ae27cc740e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 USDis0
    uint8 USDis1
    uint8 USDis2
    uint8 USDis3
    uint8 USDis4
    uint8 USDis5
    uint8 USDis6
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetObstacleDistanceResponse(null);
    if (msg.USDis0 !== undefined) {
      resolved.USDis0 = msg.USDis0;
    }
    else {
      resolved.USDis0 = 0
    }

    if (msg.USDis1 !== undefined) {
      resolved.USDis1 = msg.USDis1;
    }
    else {
      resolved.USDis1 = 0
    }

    if (msg.USDis2 !== undefined) {
      resolved.USDis2 = msg.USDis2;
    }
    else {
      resolved.USDis2 = 0
    }

    if (msg.USDis3 !== undefined) {
      resolved.USDis3 = msg.USDis3;
    }
    else {
      resolved.USDis3 = 0
    }

    if (msg.USDis4 !== undefined) {
      resolved.USDis4 = msg.USDis4;
    }
    else {
      resolved.USDis4 = 0
    }

    if (msg.USDis5 !== undefined) {
      resolved.USDis5 = msg.USDis5;
    }
    else {
      resolved.USDis5 = 0
    }

    if (msg.USDis6 !== undefined) {
      resolved.USDis6 = msg.USDis6;
    }
    else {
      resolved.USDis6 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetObstacleDistanceRequest,
  Response: GetObstacleDistanceResponse,
  md5sum() { return '01f181dd22773f5f5fa03ae27cc740e5'; },
  datatype() { return 'BaseNode/GetObstacleDistance'; }
};
