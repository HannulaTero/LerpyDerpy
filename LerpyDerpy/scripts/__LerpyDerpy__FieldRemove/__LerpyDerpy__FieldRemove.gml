

/**
* Removes lerper based on user-index, 
* which has gotten from previously attached lerper.
* Accessing lerper is done with field (scope & key).
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope  
* @param {Struct}               _key    
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__FieldRemove(_scope, _key)
{
  return self.IndexRemove(self.GetIndex(_scope, _key));
}