

/**
* Set the default dampening rate for group (applied to new attachments).
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