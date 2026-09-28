

/**
* Returns index for given field.
* Returns undefined if it doesn't exist.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope
* @param {Struct}               _key
* @returns {Real |Undefined}
*/ 
function __LerpyDerpy__GetIndex(_scope, _key)
{
  return self.mappingFields[$ self.GetKey(_scope, _key) ];
}