

/**
* Adds new lerper, which is bound to given scope with given key.
* Returns Lerpy, which can be used as handle to access.
* 
* @context LerpyDerpy
* @param {Struct | Id.Instance} _scope
* @param {Struct}               _key
* @returns {Struct.Lerpy}
*/ 
function __LerpyDerpy__Attach(_scope, _key)
{
  // Create lerper with default values.
  var _value = _scope[$ _key];
  var _lerpy = new Lerpy(_value, self.dampening, self.acceleration);
  
  
  // Update attachement related data.
  _lerpy.identifier = self.GetIdentifier(_scope, _key);
  _lerpy.group      = self;
  _lerpy.scope      = _scope;
  _lerpy.key        = _key;
  _lerpy.hash       = variable_get_hash(_key);
  
  
  // Update lerper data.
  _lerpy.current = _value;
  _lerpy.target  = _value;
  
  
  // Push into managed lerpers.
  self.lerpers[$ _lerpy.identifier] = _lerpy;
  return _lerpy;
}