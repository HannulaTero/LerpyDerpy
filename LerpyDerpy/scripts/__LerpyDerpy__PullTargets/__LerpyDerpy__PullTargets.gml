


/**
* Updates the values in attached scope and key to be their target values.
* As in pulls target-values to be current-values in attached fields.
* 
* @context LerpyDerpy
* @param {Real} _delta
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__PullTargets()
{
  // Preparations.
  // Mainly for caching for faster accessing.
  var _dataVector = self.dataVector;
  var _count = array_length(_dataVector);
  
  
  // Update each attached field with current target-value.
  for(var i = 0; i < _count; i++)
  {
    var _data  = _dataVector[i];
    struct_set_from_hash(_data.scope, _data.hash, _data.target);
  } 
  
  
  return self;
}



