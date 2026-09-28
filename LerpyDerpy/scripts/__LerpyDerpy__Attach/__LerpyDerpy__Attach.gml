

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
    array_push(_dataVector, { });    
    array_push(_mappingIndexes, _newIndex);
    array_push(_mappingInverse, _newIndex);
  }
  
  
  // Initialize with default values.
  var _data   = _dataVector[_newIndex];
  var _hash   = variable_get_hash(_key);
  var _value  = struct_get_from_hash(_scope, _hash);
  _data.scope     = _scope;
  _data.key       = _key;
  _data.hash      = _hash;
  _data.current   = _value;
  _data.target    = _value;
  _data.speed     = 0.0;
  _data.fieldKey  = self.GetKey(_scope, _key);
  
  
  // Update field-mapping.
  // Order matters, as data has already been made at this point.
  self.mappingFields[$ _data.fieldKey] = _newIndex;
  
  
  return _newIndex;
}