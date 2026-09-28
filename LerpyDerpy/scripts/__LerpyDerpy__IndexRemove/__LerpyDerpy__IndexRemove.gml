

/**
* Removes lerper based on user-index, 
* which has gotten from previously attached lerper.
* 
* @context LerpyDerpy
* @param {Real} _index
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__IndexRemove(_index)
{
  // Swap the mapping with the last item.
  self.IndexSwap(_index, self.dataUsedCapacity - 1);
  
  // Remove the mapping. 
  struct_remove(self.mappingFields, self.IndexGetKey(_index));
  
  // Update the used capacity.
  self.dataUsedCapacity -= 1;
  
  return self;
}