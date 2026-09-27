

/**
* Set the dampening rate.
* 
* @context LerpyDerpy
* @param {Real} _dampening
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__SetDampening(_dampening)
{
  self.dampening = _dampening;
  return self;
}