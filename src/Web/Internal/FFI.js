"use strict";

exports._unsafeReadProtoTagged = function (nothing, just, name, value) {
  var obj = value;
  while (obj != null) {
    var proto = Object.getPrototypeOf(obj);
    var ctor = proto.constructor.name;
    if (ctor === name) {
      return just(value);
    } else if (ctor === "Object") {
      return nothing;
    }
    obj = proto;
  }
  return nothing;
};
