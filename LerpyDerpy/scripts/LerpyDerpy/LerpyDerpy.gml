

/**
* Container of lerpers.
* These lerpers are created by attaching a scope and key to container,
* so these update automatically the value inside the attached field.
*/ 
function LerpyDerpy() constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static Attach           = __LerpyDerpy__Attach;
  static Clear            = __LerpyDerpy__Clear;
  static Detach           = __LerpyDerpy__Detach;
  static GetIdentifier    = __LerpyDerpy__GetIdentifier;
  static GetLerpy         = __LerpyDerpy__GetLerpy;
  static PullTargets      = __LerpyDerpy__PullTargets; 
  static PushTargets      = __LerpyDerpy__PushTargets; 
  static SetAcceleration  = __LerpyDerpy__SetAcceleration;
  static SetDampening     = __LerpyDerpy__SetDampening;
  static Update           = __LerpyDerpy__Update;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : STRUCT INSTANCE VARIABLES.
  
  
  // Contains all attached and managed lerpers.
  // @ignore 
  self.lerpers = { };
  
  
  // What is default acceleration for lerpers.
  // @ignore
  self.acceleration = 8.0; 
  
  
  // What is default dampening for lerpers.
  // @ignore
  self.dampening = 0.75; 
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : HANDLE CONSTRUCTING.
  
  // Nothing for now.
  
  #endregion
  // 
  //=============================================================
  
}