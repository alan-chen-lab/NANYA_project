// Auto-generated. Do not edit!

// (in-package BaseNode.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FlagReport = require('./FlagReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FlagReportStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.flag_report = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('flag_report')) {
        this.flag_report = initObj.flag_report
      }
      else {
        this.flag_report = new FlagReport();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlagReportStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [flag_report]
    bufferOffset = FlagReport.serialize(obj.flag_report, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlagReportStamped
    let len;
    let data = new FlagReportStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [flag_report]
    data.flag_report = FlagReport.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BaseNode/FlagReportStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51a9914a0bbd2a4083e199a0966ecbf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    FlagReport flag_report
    
    
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
    MSG: BaseNode/FlagReport
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
    const resolved = new FlagReportStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.flag_report !== undefined) {
      resolved.flag_report = FlagReport.Resolve(msg.flag_report)
    }
    else {
      resolved.flag_report = new FlagReport()
    }

    return resolved;
    }
};

module.exports = FlagReportStamped;
