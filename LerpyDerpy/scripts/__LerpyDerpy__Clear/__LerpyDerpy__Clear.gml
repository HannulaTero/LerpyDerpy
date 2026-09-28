


/**
* Clears out all lerpers.
* 
* @context LerpyDerpy
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__Clear()
{
  // Detach all first.
  struct_foreach(self.lerpers, function(_key, _lerper)
  {
    _lerper.Detach();
  });
  
  
  // Make clean container.
  delete self.lerpers;
  self.lerpers = { };
  return self;
}



