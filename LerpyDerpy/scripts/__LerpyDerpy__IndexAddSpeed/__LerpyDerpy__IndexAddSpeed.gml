

/**
* Adds speed for given lerper.
* 
* @context LerpyDerpy
* @param {Real} _index  Lerper index from .Attach(...)
* @param {Real} _offset Offset value to move the target.
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__IndexAddSpeed(_index, _offset)
{
  var _data = self.GetData(_index);
  _data[LerpyDerpyItem.SPEED] += _offset;
  return self;
}