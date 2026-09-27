

/**
* Set the target value for given lerper.
* 
* @context LerpyDerpy
* @param {Real} _index  Lerper index from .Attach(...)
* @param {Real} _target Absolute value target is moved to.
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__SetTarget(_index, _target)
{
  var _data = self.GetData(_index);
  _data[LerpyDerpyField.TARGET] = _target;
  return self;
}