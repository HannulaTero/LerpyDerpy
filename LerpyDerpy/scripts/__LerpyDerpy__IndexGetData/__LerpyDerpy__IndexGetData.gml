

/**
* Get lerper data for given index.
* 
* @context LerpyDerpy
* @param {Real} _index  Lerper index from .Attach(...)  
* @returns {Array<Real>}
*/ 
function __LerpyDerpy__IndexGetData(_index)
{
  return self.dataVector[ self.mappingIndexes[_index] ];
}