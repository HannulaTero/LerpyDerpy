

/**
* Creates lerper with momentum.
* 
* @param {Real} _value
* @param {Real} _dampening
* @param {Real} _acceleration
*/ 
function Lerpy(_value=0, _dampening=0.75, _acceleration=8.0)
{
  //=============================================================
  // 
  #region STATIC METHODS.
  
  
  static AddMomentum  = __Lerpy__AddMomentum;
  static AddOffset    = __Lerpy__AddOffset;
  static AddTarget    = __Lerpy__AddTarget;
  static Get          = __Lerpy__Get;
  static SetAbsolute  = __Lerpy__SetAbsolute;
  static SetCurrent   = __Lerpy__SetCurrent;
  static SetMomentum  = __Lerpy__SetMomentum;
  static SetTarget    = __Lerpy__SetTarget;
  static Update       = __Lerpy__Update;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region STRUCT INSTANCE VARIABLES.
  
  
  // Where lerper aims at.
  self.target = _value;
  
  
  // What is current actual value.
  self.current = _value;
  
  
  // Speed of change.
  self.momentum = 0.0;
  
  
  // How much friction there is.
  self.dampening = _dampening;
  
  
  // How fast accelerates towards target.
  self.acceleration = _acceleration;
  
  
  #endregion
  // 
  //=============================================================
}