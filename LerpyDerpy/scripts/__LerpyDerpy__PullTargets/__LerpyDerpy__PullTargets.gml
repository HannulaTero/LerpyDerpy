


/**
* Updates the values in attached scope and key to be their target values.
* As in pulls target-values to be current-values in attached fields.
* 
* @context LerpyDerpy
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__PullTargets()
{
  struct_foreach(self.lerpers, function(_key, _lerper)
  {
    struct_set_from_hash(_lerper.scope, _lerper.hash, _lerper.target);
  });
  
  return self;
}



