

/**
* Updates target for the given lerper.
* 
* @context LerpyDerpy
* @param {Real} _index  Lerper index from .Attach(...)
* @param {Real} _target Absolute value target is moved to.
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__IndexSetTarget(_index, _target)
{
  self.IndexGetData(_index).target = _target;
  return self;
}