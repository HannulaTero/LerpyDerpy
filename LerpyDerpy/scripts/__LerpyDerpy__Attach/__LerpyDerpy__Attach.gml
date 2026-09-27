

/**
* Adds new lerper, which is bound to given scope with given key.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope
* @param {Struct}               _key
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__Attach(_scope, _key)
{
  var _newDataIndex = self.dataUsedCapacity;
  
  
  // Swap the mapping with the last item.
  self.Swap(_dstMappingIndex, self.dataUsedCapacity - 1);
  
  
  // Update the used capacity.
  self.dataUsedCapacity -= 1;
  
  return self;
}