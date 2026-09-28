

/**
* Sets the speed for given lerper.
* Accessing lerper is done with field (scope & key).
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope  
* @param {Struct}               _key    
* @param {Real}                 _offset Offset value to move the target.
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__FieldSetSpeed(_scope, _key, _offset)
{
  return self.IndexSetSpeed(self.GetIndex(_scope, _key), _offset);
}

