

/**
* Set the speed value for given lerper.
* 
* @context LerpyDerpy
* @param {Real} _index  Lerper index from .Attach(...)
* @param {Real} _target Absolute value for speed.
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__SetSpeed(_index, _target)
{
  var _data = self.GetData(_index);
  _data[LerpyDerpyField.SPEED] = _target;
  return self;
}