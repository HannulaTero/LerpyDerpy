


/**
* Updates the lerper targets with their attached scope and key.
* As in pulls current values to be the target values.
* 
* In the "Update"-method lerpers change values inside scope[$ key],
* but here lerper targets are updated into scope[$ key].
* 
* In short, set the values just before
* "PullTargets()" and "Update()" 
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
  
  
  // Update each lerper.
  for(var i = 0; i < _count; i++)
  {
    var _data  = _dataVector[i];
    var _scope = _data[LerpyDerpyItem.SCOPE];
    var _field = _data[LerpyDerpyItem.HASH];
    _data[LerpyDerpyItem.TARGET] = struct_get_from_hash(_scope, _field);
    struct_set_from_hash(_scope, _field, _data[LerpyDerpyItem.CURRENT]);
  }
  
  
  return self;
}



