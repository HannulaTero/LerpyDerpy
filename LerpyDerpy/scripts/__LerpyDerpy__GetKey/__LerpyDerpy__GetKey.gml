

/**
* Generates field-key for given scope & key.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope
* @param {String}               _key
* @returns {String}
* @ignore
*/ 
function __LerpyDerpy__GetKey(_scope, _key)
{
  var _hash = variable_get_hash(_key);
  return $"{ptr(_scope)}@{_hash}";
}