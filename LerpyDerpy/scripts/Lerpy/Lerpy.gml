

/**
* Creates lerper with momentum.
* This doesn't automatically read any values like LerpyDerpy.
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
  
  
  static AddSpeed     = __Lerpy__AddSpeed;
  static AddOffset    = __Lerpy__AddOffset;
  static AddTarget    = __Lerpy__AddTarget;
  static Get          = __Lerpy__Get;
  static SetAbsolute  = __Lerpy__SetAbsolute;
  static SetCurrent   = __Lerpy__SetCurrent;
  static SetSpeed     = __Lerpy__SetSpeed;
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
  self.speed = 0.0;
  
  
  // How much friction there is.
  self.dampening = _dampening;
  
  
  // How fast accelerates towards target.
  self.acceleration = _acceleration;
  
  
  #endregion
  // 
  //=============================================================
}