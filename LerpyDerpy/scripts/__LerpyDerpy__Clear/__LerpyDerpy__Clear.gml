


/**
* Clears out all lerpers.
* 
* @context LerpyDerpy
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__Clear()
{
  array_resize(self.dataVector, 0);
  array_resize(self.mappingIndexes, 0);
  array_resize(self.mappingInverse, 0);
  self.dataUsedCapacity = 0; 
  return self;
}



