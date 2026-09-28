

/**
* Removes lerper based on user-index, 
* which has gotten from previously attached lerper.
* 
* @context LerpyDerpy
* @param {Real} _dstMappingIndex
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__IndexRemove(_dstMappingIndex)
{
  // Swap the mapping with the last item.
  self.Swap(_dstMappingIndex, self.dataUsedCapacity - 1);
  
  
  // Update the used capacity.
  self.dataUsedCapacity -= 1;
  
  return self;
}