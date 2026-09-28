

/**
* Get lerper data for given field.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope  
* @param {Struct}               _key    
* @returns {Struct}
*/ 
function __LerpyDerpy__FieldGetData(_scope, _key)
{
  return self.IndexGetData(self.GetIndex(_scope, _key));
}