

/**
* Adds value the target value for given lerper.
* 
* @context LerpyDerpy
* @param {Real} _index  Lerper index from .Attach(...)
* @param {Real} _offset Offset value to move the target.
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__IndexAddTarget(_index, _offset)
{
  self.IndexGetData(_index).target += _offset;
  return self;
}