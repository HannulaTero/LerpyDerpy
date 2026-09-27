

/**
* Get lerper data for given index.
* 
* @context LerpyDerpy
* @param {Real} _index  Lerper index from .Attach(...)
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__GetData(_index)
{
  return self.dataVector[ self.mappingIndexes[_index] ];
}