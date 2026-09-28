


/**
* Set momentum to be some absolute value.
* 
* @context Lerpy
* @param {Real} _offset
* @returns {Struct.Lerpy}
*/
function __Lerpy__SetSpeed(_offset=0)
{
  self.speed = _offset;
  return self;
}