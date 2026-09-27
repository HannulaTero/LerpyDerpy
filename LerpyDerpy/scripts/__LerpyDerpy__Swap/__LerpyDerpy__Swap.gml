

/**
* Swaps two lerper data locations within the.
* Towards to the user, this shouldn't do anything.
* 
* @context LerpyDerpy
* @param {Real} _lhsMappingIndex
* @param {Real} _rhsMappingIndex
* @returns {Struct.LerpyDerpy}
* @ignore
*/ 
function __LerpyDerpy__Swap(_lhsMappingIndex, _rhsMappingIndex)
{
  // Preparations.
  // Mainly for caching for faster accessing.
  var _dataVector     = self.dataVector;
  var _mappingIndexes = self.mappingIndexes;
  var _mappingInverse = self.mappingInverse;
  
  
  // Get the data-indexes.
  var _lhsDataIndex = _mappingIndexes[_lhsMappingIndex];
  var _rhsDataIndex = _mappingIndexes[_rhsMappingIndex];
  
  
  // Swap the locations of the data.
  var _temporal = _dataVector[_lhsDataIndex];
  _dataVector[_lhsDataIndex] = _dataVector[_rhsDataIndex];
  _dataVector[_rhsDataIndex] = _temporal;
  
  
  // Swap the inverse mapping.
  _mappingInverse[_lhsDataIndex] = _rhsMappingIndex;
  _mappingInverse[_rhsDataIndex] = _lhsMappingIndex;
  
  
  // Swap the index mapping.
  _mappingIndexes[_lhsMappingIndex] = _rhsDataIndex;
  _mappingIndexes[_rhsMappingIndex] = _lhsDataIndex;
  
  
  return self;
}




