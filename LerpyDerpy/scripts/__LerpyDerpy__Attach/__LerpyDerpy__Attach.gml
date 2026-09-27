

/**
* Adds new lerper, which is bound to given scope with given key.
* Returns index for the lerper.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope
* @param {Struct}               _key
* @returns {Real}
*/ 
function __LerpyDerpy__Attach(_scope, _key)
{
  // Preparations.
  // Mainly for caching for faster accessing.
  var _dataVector     = self.dataVector;
  var _mappingIndexes = self.mappingIndexes;
  var _mappingInverse = self.mappingInverse;
  
  
  // Get the data-index, update capacity.
  var _newIndex = self.dataUsedCapacity;
  self.dataUsedCapacity += 1;
  if (self.dataUsedCapacity > array_length(_dataVector))
  {
    array_push(_dataVector, array_create(LerpyDerpyField.length));    
    array_push(_mappingIndexes, _newIndex);
    array_push(_mappingInverse, _newIndex);
  }
  
  
  // Initialize with default values.
  // Updates the scope and field.
  var _data = _dataVector[_newIndex];
  _data[LerpyDerpyField.SCOPE]  = _scope;
  _data[LerpyDerpyField.FIELD]  = variable_get_hash(_key);
  _data[LerpyDerpyField.TARGET] = struct_get_from_hash(_scope, _key);
  _data[LerpyDerpyField.SPEED]  = 0.0;

  
  return _newIndex;
}