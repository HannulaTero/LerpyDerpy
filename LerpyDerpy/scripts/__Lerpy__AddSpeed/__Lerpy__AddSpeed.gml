


/**
* Adds offset to speed.
* 
* @context Lerpy
* @param {Real} _offset
* @returns {Struct.Lerp}
*/
function __Lerpy__AddSpeed(_offset=0)
{
  self.speed += _offset;
  return self;
}