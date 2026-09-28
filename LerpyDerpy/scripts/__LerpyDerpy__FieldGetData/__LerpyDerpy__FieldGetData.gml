

/**
* Get lerper data for given index.
* This returns array, indexes with Enum.LerpyDerpyItem
* Accessing lerper is done with field (scope & key).
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope  
* @param {Struct}               _key    
* @returns {Array<Real>}
*/ 
function __LerpyDerpy__FieldGetData(_scope, _key)
{
  return self.IndexGetData(self.GetIndex(_scope, _key));
}