


/**
* Update the value.
* 
* @param {Real} _delta
* @returns {Struct.Lerpy}
*/ 
function __Lerpy__Update(_delta=(1.0 / game_get_speed(gamespeed_fps)))
{
  var _force    = (self.target - self.current);
  self.current  += self.speed;
  self.speed    += self.acceleration * _force * _delta;
  self.speed    *= self.dampening;
  return self;
}