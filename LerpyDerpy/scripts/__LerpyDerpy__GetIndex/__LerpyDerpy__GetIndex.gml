

/**
* Returns index for given field.
* Returns -1 if it doesn't exist.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope
* @param {Struct}               _key
* @returns {Real}
*/ 
function __LerpyDerpy__GetIndex(_scope, _key)
{
  static context = { scope : undefined, hash : undefined };
  static functor = method(context, function(_data, _index)
  {
    return (
      (_data[LerpyDerpyItem.SCOPE] == scope) && 
      (_data[LerpyDerpyItem.HASH] == hash)
    );
  });
  
  
  context.scope = _scope;
  context.hash  = variable_get_hash(_key);
  return array_find_index(self.dataVector, functor);
}