// Auto-generated. Do not edit!

// (in-package demo_turtle2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class turtle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_vx = null;
      this.linear_vy = null;
      this.linear_vz = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_vx')) {
        this.linear_vx = initObj.linear_vx
      }
      else {
        this.linear_vx = 0.0;
      }
      if (initObj.hasOwnProperty('linear_vy')) {
        this.linear_vy = initObj.linear_vy
      }
      else {
        this.linear_vy = 0.0;
      }
      if (initObj.hasOwnProperty('linear_vz')) {
        this.linear_vz = initObj.linear_vz
      }
      else {
        this.linear_vz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type turtle
    // Serialize message field [linear_vx]
    bufferOffset = _serializer.float32(obj.linear_vx, buffer, bufferOffset);
    // Serialize message field [linear_vy]
    bufferOffset = _serializer.float32(obj.linear_vy, buffer, bufferOffset);
    // Serialize message field [linear_vz]
    bufferOffset = _serializer.float32(obj.linear_vz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type turtle
    let len;
    let data = new turtle(null);
    // Deserialize message field [linear_vx]
    data.linear_vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_vy]
    data.linear_vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_vz]
    data.linear_vz = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'demo_turtle2/turtle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bcb1a3b1dca3c9e55294fb33328a77b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 linear_vx
    float32 linear_vy
    float32 linear_vz
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new turtle(null);
    if (msg.linear_vx !== undefined) {
      resolved.linear_vx = msg.linear_vx;
    }
    else {
      resolved.linear_vx = 0.0
    }

    if (msg.linear_vy !== undefined) {
      resolved.linear_vy = msg.linear_vy;
    }
    else {
      resolved.linear_vy = 0.0
    }

    if (msg.linear_vz !== undefined) {
      resolved.linear_vz = msg.linear_vz;
    }
    else {
      resolved.linear_vz = 0.0
    }

    return resolved;
    }
};

module.exports = turtle;
