


/**
* Set acceleration rate.
* 
* @context Lerpy
* @param {Real} _acceleration
* @returns {Struct.Lerpy}
*/
function __Lerpy__SetAcceleration(_acceleration=8.0)
{
  self.acceleration = _acceleration;
  return self;
}