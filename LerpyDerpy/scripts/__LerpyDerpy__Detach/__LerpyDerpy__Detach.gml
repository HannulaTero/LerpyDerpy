

/**
* Removes given lerper from the collection.
* 
* @context LerpyDerpy
* @param {Struct.Lerpy} _lerpy
* @returns {Struct.LerpyDerpyData}
*/ 
function __LerpyDerpy__Detach(_scope, _key)
{
  var _identifier = self.GetIdentifier(_scope, _key);
  var _lerpy = self.lerpers[$ _identifier];
  if (_lerpy == undefined)
  {
    return;
  }
  
  _lerpy.Detach();
  return self;
}