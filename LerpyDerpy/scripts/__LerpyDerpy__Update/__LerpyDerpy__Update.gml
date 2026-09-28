


/**
* Updates the lerpers.
* 
* @context LerpyDerpy
* @param {Real} _delta
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__Update(_delta=(1.0 / game_get_speed(gamespeed_fps)))
{
  // Preparations.
  // Mainly for caching for faster accessing.
  var _dataVector   = self.dataVector;
  var _acceleration = self.acceleration * _delta;
  var _dampening    = self.dampening;
  
  
  // Update each lerper.
  var _count = array_length(_dataVector);
  for(var i = 0; i < _count; i++)
  {
    // Get the target data.
    var _data  = _dataVector[i];
    var _force = (_data.target - _data.current);
    var _speed = _data.speed;
    _data.current += _speed;
    _data.speed = (_speed + _acceleration * _force) * _dampening;
    
    // Store the updated values.
    struct_set_from_hash(_data.scope, _data.hash, _data.current);
  }
  
  
  return self;
}



