


/**
* Updates the lerper targets with their attached scope and key.
* As in pushes current values to be the target values.
* 
* In the "Update"-method lerpers change values inside scope[$ key],
* but here lerper targets are updated into scope[$ key].
* 
* In short, set the values just before
* "PullTargets()" and "Update()" 
* 
* @context LerpyDerpy
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__PushTargets()
{
  struct_foreach(self.lerpers, function(_key, _lerper)
  {
    _lerper.target = struct_get_from_hash(_lerper.scope, _lerper.hash);
    struct_set_from_hash(_lerper.scope, _lerper.hash, _lerper.current);
  });
  
  return self;
}



