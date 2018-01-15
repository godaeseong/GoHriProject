// Auto-generated. Do not edit!

// (in-package google_cloud_speech.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RecognizedWord {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recognized_word = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('recognized_word')) {
        this.recognized_word = initObj.recognized_word
      }
      else {
        this.recognized_word = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizedWord
    // Serialize message field [recognized_word]
    bufferOffset = _serializer.string(obj.recognized_word, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizedWord
    let len;
    let data = new RecognizedWord(null);
    // Deserialize message field [recognized_word]
    data.recognized_word = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.recognized_word.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'google_cloud_speech/RecognizedWord';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51c6e3e563ea88eab63cbd1935da005e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string recognized_word
    float64 confidence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizedWord(null);
    if (msg.recognized_word !== undefined) {
      resolved.recognized_word = msg.recognized_word;
    }
    else {
      resolved.recognized_word = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = RecognizedWord;
