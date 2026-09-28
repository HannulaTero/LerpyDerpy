

/**
* Creates lerper with momentum.
* This doesn't automatically read/write fields like LerpyDerpy.
* 
* @param {Real} _value
* @param {Real} _dampening
* @param {Real} _acceleration
*/ 
function Lerpy(_value=0.0, _dampening=0.75, _acceleration=8.0) constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static AddSpeed         = __Lerpy__AddSpeed;
  static AddOffset        = __Lerpy__AddOffset;
  static AddTarget        = __Lerpy__AddTarget;
  static Detach           = __Lerpy__Detach;
  static Get              = __Lerpy__Get;
  static GetTarget        = __Lerpy__GetTarget;
  static SetAbsolute      = __Lerpy__SetAbsolute;
  static SetAcceleration  = __Lerpy__SetAcceleration;
  static SetCurrent       = __Lerpy__SetCurrent;
  static SetDampening     = __Lerpy__SetDampening;
  static SetSpeed         = __Lerpy__SetSpeed;
  static SetTarget        = __Lerpy__SetTarget;
  static Update           = __Lerpy__Update;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : APPROACHING VARIABLES.
  
  
  // Where lerper aims at.
  // @ignore
  self.target = _value;
  
  
  // What is current actual value.
  // @ignore
  self.current = _value;
  
  
  // Speed of change.
  // @ignore
  self.speed = 0.0;
  
  
  // How much friction there is.
  // @ignore
  self.dampening = _dampening;
  
  
  // How fast accelerates towards target.
  // @ignore
  self.acceleration = _acceleration;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : ATTACHING TO LERPYDERPY.
  
  
  // Identifier, generated from scope and key.
  // @ignore
  self.identifier = "";
  
  
  // LerpyDerpy, which lerper collection belongs to.
  // @ignore
  self.group = undefined;
  
  
  // Scope, which is field is being modified.
  // @ignore
  self.scope = undefined;
  
  
  // What key from the scope is being modified.
  // @ignore
  self.key = undefined;
  
  
  // Hash of the key.
  // @ignore
  self.hash = undefined;
  
  
  #endregion
  // 
  //=============================================================
}