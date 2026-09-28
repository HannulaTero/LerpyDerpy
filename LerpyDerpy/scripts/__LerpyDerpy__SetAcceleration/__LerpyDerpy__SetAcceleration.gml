

/**
* Set the default acceleration rate (applied to new attachments).
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