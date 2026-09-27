


/**
* Set the target and current value at same time.
* 
* @context Lerpy
* @param {Real} _target
* @param {Real} _current
* @returns {Struct.Lerp}
*/
function __Lerpy__SetAbsolute(_target, _current=_target)
{
  self.target  = _target;
  self.current = _current;
  return self;
}