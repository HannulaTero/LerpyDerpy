

/**
* Returns the lerper attached to given field.
* If doesn't exist, returns undefined.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope
* @param {Struct}               _key
* @returns {Struct.Lerpy}
*/ 
function __LerpyDerpy__GetLerpy(_scope, _key)
{
  return self.lerpers[$ self.GetIdentifier(_scope, _key) ];
}