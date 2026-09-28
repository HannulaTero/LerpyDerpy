

/**
* Container of lerpers.
* These lerpers are created by attaching a scope and key to container,
* so these update automatically the value inside the attached field.
* 
* All lerpers share same acceleration and dampening.
* 
* The data handling is inspired by: 
* https://www.youtube.com/watch?v=L4xOCvELWlU
*/ 
function LerpyDerpy() constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  // Container handling.
  static Attach           = __LerpyDerpy__Attach;
  static Clear            = __LerpyDerpy__Clear;
  static GetIndex         = __LerpyDerpy__GetIndex;
  static GetKey           = __LerpyDerpy__GetKey;
  static PullTargets      = __LerpyDerpy__PullTargets; 
  static PushTargets      = __LerpyDerpy__PushTargets; 
  static SetAcceleration  = __LerpyDerpy__SetAcceleration;
  static SetDampening     = __LerpyDerpy__SetDampening;
  static Update           = __LerpyDerpy__Update;
  
  
  // Field-based accessing on lerpers.
  static FieldAddSpeed  = __LerpyDerpy__FieldAddSpeed;
  static FieldAddTarget = __LerpyDerpy__FieldAddTarget;
  static FieldGetData   = __LerpyDerpy__FieldGetData;
  static FieldRemove    = __LerpyDerpy__FieldRemove;
  static FieldSetSpeed  = __LerpyDerpy__FieldSetSpeed;
  static FieldSetTarget = __LerpyDerpy__FieldSetTarget;
  
  
  // Index-based accessing on lerpers.
  static IndexAddSpeed  = __LerpyDerpy__IndexAddSpeed;
  static IndexAddTarget = __LerpyDerpy__IndexAddTarget;
  static IndexGetData   = __LerpyDerpy__IndexGetData;
  static IndexRemove    = __LerpyDerpy__IndexRemove;
  static IndexSetSpeed  = __LerpyDerpy__IndexSetSpeed;
  static IndexSetTarget = __LerpyDerpy__IndexSetTarget;
  static IndexSwap      = __LerpyDerpy__IndexSwap;
  
  
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
  
  
  // Mapping fields (scope & key) into user-indexes.
  // @ignore
  self.mappingFields = { };
  
  
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