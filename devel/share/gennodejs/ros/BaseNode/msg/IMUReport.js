// Auto-generated. Do not edit!

// (in-package BaseNode.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class IMUReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_acc = null;
      this.angular_acc = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_acc')) {
        this.linear_acc = initObj.linear_acc
      }
      else {
        this.linear_acc = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_acc')) {
        this.angular_acc = initObj.angular_acc
      }
      else {
        this.angular_acc = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IMUReport
    // Serialize message field [linear_acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acc, buffer, bufferOffset);
    // Serialize message field [angular_acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IMUReport
    let len;
    let data = new IMUReport(null);
    // Deserialize message field [linear_acc]
    data.linear_acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_acc]
    data.angular_acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/IMUReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fa1cce6f2c843c4ab29f13782961f52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 linear_acc
    geometry_msgs/Vector3 angular_acc
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IMUReport(null);
    if (msg.linear_acc !== undefined) {
      resolved.linear_acc = geometry_msgs.msg.Vector3.Resolve(msg.linear_acc)
    }
    else {
      resolved.linear_acc = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_acc !== undefined) {
      resolved.angular_acc = geometry_msgs.msg.Vector3.Resolve(msg.angular_acc)
    }
    else {
      resolved.angular_acc = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = IMUReport;
