"use strict";

exports._unsafeReadProtoTagged = function (nothing, just, name, value) {
  var obj = value;
  var longname = "[object " + name + "]";
  while (obj != null) {
    var proto = Object.getPrototypeOf(obj);
    var ctor = proto.constructor.name;
    var longctor = proto.constructor.toString();
    if (ctor === name || longctor === longname) {
      return just(value);
    } else if (ctor === "Object" || longctor === "[object Object]") {
      return nothing;
    }
    obj = proto;
  }
  return nothing;
};
