

/**
* Set the acceleration rate.
* 
* @context LerpyDerpy
* @param {Real} _acceleration
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__SetAcceleration(_acceleration)
{
  self.acceleration = _acceleration;
  return self;
}