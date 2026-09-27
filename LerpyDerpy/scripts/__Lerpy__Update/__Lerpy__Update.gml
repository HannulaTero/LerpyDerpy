


/**
* Update the value.
* 
* @returns {Struct.Lerp}
*/ 
function __Lerpy__Update()
{
  var _delta    = (1.0 / game_get_speed(gamespeed_fps));
  var _force    = (self.target - self.current);
  self.current  += self.momentum;
  self.momentum += self.acceleration * _force * _delta;
  self.momentum *= self.dampening;
  return self;
}