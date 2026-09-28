


/**
* Set dampening value.
* 
* @context Lerpy
* @param {Real} _dampening
* @returns {Struct.Lerpy}
*/
function __Lerpy__SetDampening(_dampening=0.75)
{
  self.dampening = _dampening;
  return self;
}