


/**
* Set absolute target position.
* 
* @context Lerpy
* @param {Real} _target
* @returns {Struct.Lerp}
*/
function __Lerpy__SetTarget(_target=self.target)
{
  self.target = _target;
  return self;
}