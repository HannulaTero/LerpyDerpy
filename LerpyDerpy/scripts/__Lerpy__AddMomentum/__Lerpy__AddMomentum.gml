


/**
* Adds offset to momentum.
* 
* @context Lerpy
* @param {Real} _offset
* @returns {Struct.Lerp}
*/
function __Lerpy__AddMomentum(_offset=0)
{
  self.momentum += _offset;
  return self;
}