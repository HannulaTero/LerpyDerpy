


/**
* Set momentum to be some absolute value.
* 
* @context Lerpy
* @param {Real} _offset
* @returns {Struct.Lerp}
*/
function __Lerpy__SetMomentum(_offset=0)
{
  self.momentum = _offset;
  return self;
}