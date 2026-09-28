


/**
* Updates the values in attached scope and key to be their target values.
* As in pushes target-values to be current-values in attached fields.
* 
* @context LerpyDerpy
* @param {Real} _delta
* @returns {Struct.LerpyDerpy}
*/ 
function __LerpyDerpy__PushTargets()
{
  // Preparations.
  // Mainly for caching for faster accessing.
  var _dataVector = self.dataVector;
  var _count = array_length(_dataVector);
  
  
  // Update each attached field.
  for(var i = 0; i < _count; i++)
  {
    var _data  = _dataVector[i];
    struct_set_from_hash(
      _data[LerpyDerpyItem.SCOPE], 
      _data[LerpyDerpyItem.HASH], 
      _data[LerpyDerpyItem.TARGET]
    );
  }
  
  
  return self;
}



