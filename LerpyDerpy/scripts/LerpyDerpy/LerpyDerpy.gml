

/**
* Container of lerpers.
* These lerpers are attached to scope and key,
* so these update automatically the value inside the key.
* 
* The data handling is inspired by: 
* https://www.youtube.com/watch?v=L4xOCvELWlU
*/ 
function LerpyDerpy() constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static AddSpeed         = __LerpyDerpy__AddSpeed;
  static AddTarget        = __LerpyDerpy__AddTarget;
  static Attach           = __LerpyDerpy__Attach;
  static Clear            = __LerpyDerpy__Clear;
  static GetData          = __LerpyDerpy__GetData;
  static Remove           = __LerpyDerpy__Remove;
  static SetAcceleration  = __LerpyDerpy__SetAcceleration;
  static SetDampening     = __LerpyDerpy__SetDampening;
  static SetSpeed         = __LerpyDerpy__SetSpeed;
  static SetTarget        = __LerpyDerpy__SetTarget;
  static Swap             = __LerpyDerpy__Swap;
  static TargetAttached   = __LerpyDerpy__TargetAttached;
  static Update           = __LerpyDerpy__Update;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : STRUCT INSTANCE VARIABLES.
  
  
  // Contains data for all lerpers.
  // User doesn't have direct index to these.
  // @ignore 
  self.dataVector = [ ];
  
  
  // Index, which points to actual data in dataVector.
  // Attaching new element returns user index to dataIndexes.
  // For given user-index, what is position in dataVector.
  // @ignore 
  self.mappingIndexes = [ ];
  
  
  // Acts inverse to data-indexes.
  // For given position in dataVector, what is user-index.
  // @ignore 
  self.mappingInverse = [ ];
  
  
  // How many lerpers are currently active.
  // @ignore
  self.dataUsedCapacity = 0; 
  
  
  // What is acceleration value for all lerpers.
  // @ignore
  self.acceleration = 8.0; 
  
  
  // What is dampening value for all lerpers.
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