

/**
* Creates a identifier for scope and key.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope
* @param {Struct}               _key
* @returns {String}
* @ignore
*/ 
function __LerpyDerpy__GetIdentifier(_scope, _key)
{
  return $"[{ptr(_scope)}][{_key}]";
}