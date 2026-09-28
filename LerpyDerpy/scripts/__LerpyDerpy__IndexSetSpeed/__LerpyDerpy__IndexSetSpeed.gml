

/**
* Set the speed value for given lerper.
* 
* @context LerpyDerpy
* @param {Real} _index  Lerper index from .Attach(...)
* @param {Real} _target Absolute value for speed.
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__IndexSetSpeed(_index, _target)
{
  self.IndexGetData(_index).speed = _target;
  return self;
}