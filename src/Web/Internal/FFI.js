"use strict";

exports._unsafeReadProtoTagged = function (nothing, just, name, value) {
  var ty = window[name];
  if (ty != null && value instanceof ty) {
    return just(value);
  }
  return nothing;
};
