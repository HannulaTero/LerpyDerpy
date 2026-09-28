


/**
* Detach from LerpyDerpy-collection, if it's part of it.
* 
* @context Lerpy
* @returns {Struct.Lerpy}
*/
function __Lerpy__Detach()
{
  if (self.group == undefined)
  {
    return self;
  }
  
  struct_remove(self.group.lerpers, self.identifier);
  self.identifier = undefined;
  self.group      = undefined;
  self.scope      = undefined;
  self.key        = undefined;
  self.hash       = undefined;
  return self;
}