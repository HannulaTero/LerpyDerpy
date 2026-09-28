


/**
* Add offset to current value.
* 
* @context Lerpy
* @param {Real} _offset
* @returns {Struct.Lerpy}
*/
function __Lerpy__AddOffset(_offset=0)
{
  self.current += _offset;
  return self;
}