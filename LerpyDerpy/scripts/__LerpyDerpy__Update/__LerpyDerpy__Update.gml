


/**
* Updates the lerpers.
* This will update the attached fields.
* 
* @context LerpyDerpy
* @param {Real} _delta
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__Update(_delta=(1.0 / game_get_speed(gamespeed_fps)))
{
  static context = { delta : 1.0 };
  static functor = method(context, function(_key, _lerper)
  {
    _lerper.Update(delta);
    struct_set_from_hash(_lerper.scope, _lerper.hash, _lerper.current);
  });
  
  
  context.delta = _delta;
  struct_foreach(self.lerpers, functor);
  return self;
}



