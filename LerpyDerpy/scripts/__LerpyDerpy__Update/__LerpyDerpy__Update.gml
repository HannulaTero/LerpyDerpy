


/**
* Updates the lerpers.
* 
* @context LerpyDerpy
* @param {Real} _delta
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__Update(_delta=undefined)
{
  // Preparations.
  // Mainly for caching for faster accessing.
  var _dataVector   = self.dataVector;
  var _acceleration = self.acceleration;
  var _dampening    = self.dampening;
  
  
  // Get the delta-value.
  _delta ??= (1.0 / game_get_speed(gamespeed_fps));
  
  
  // Update each lerper.
  var _count = array_length(_dataVector);
  for(var i = 0; i < _count; i++)
  {
    // Get the target data.
    var _data     = _dataVector[i];
    var _scope    = _data[LerpyDerpyItem.SCOPE];
    var _field    = _data[LerpyDerpyItem.HASH];
    var _target   = _data[LerpyDerpyItem.TARGET];
    var _current  = _data[LerpyDerpyItem.CURRENT];
    var _speed    = _data[LerpyDerpyItem.SPEED];
    
    // Calculate the speed.
    var _updated  = (_current + _speed);
    var _force    = (_target - _current);
    _speed += _acceleration * _force * _delta;
    _speed *= _dampening;
    
    // Store the updated values.
    _data[LerpyDerpyItem.SPEED]   = _speed;
    _data[LerpyDerpyItem.CURRENT] = _updated;
    struct_set_from_hash(_scope, _field, _updated);
  }
  
  
  return self;
}



