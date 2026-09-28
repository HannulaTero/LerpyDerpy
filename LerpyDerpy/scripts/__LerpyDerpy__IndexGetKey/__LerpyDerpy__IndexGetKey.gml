

/**
* Returns field-key for given lerper-index.
* 
* @context LerpyDerpy
* @param {Real} _index
* @returns {String}
* @ignore
*/ 
function __LerpyDerpy__IndexGetKey(_index)
{
  return self.IndexGetData(_index).fieldKey;
}