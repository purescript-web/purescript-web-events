const newSimple = function(ty) {
  return new CustomEvent(ty);
};
export { newSimple as new };

export function newOptions (ty) {
  return function (opt) {
    return new CustomEvent(ty, opt);
  };
}

export function detail(e) {
  return e.detail;
}
