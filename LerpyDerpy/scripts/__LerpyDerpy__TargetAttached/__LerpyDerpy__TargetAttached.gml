


/**
* Updates the lerper targets with their attached scope and key.
* In the "Update"-method lerpers change values inside scope[$ key],
* but here lerper targets are updated into scope[$ key].
* 
* @context LerpyDerpy
* @param {Real} _delta
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__TargetAttached()
{
  // Preparations.
  // Mainly for caching for faster accessing.
  var _dataVector = self.dataVector;
  var _count = array_length(_dataVector);
  
  
  // Update each lerper.
  for(var i = 0; i < _count; i++)
  {
    var _data  = _dataVector[i];
    var _scope = _data[LerpyDerpyField.SCOPE];
    var _field = _data[LerpyDerpyField.FIELD];
    _data[LerpyDerpyField.TARGET] = struct_get_from_hash(_scope, _field);
  }
  
  
  return self;
}



