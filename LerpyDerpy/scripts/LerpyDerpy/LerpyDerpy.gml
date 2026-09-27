

/**
* 
* The data handling is inspired by: 
* https://www.youtube.com/watch?v=L4xOCvELWlU
*/ 
function LerpyDerpy() constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static Attach   = __LerpyDerpy__Attach;
  static Remove   = __LerpyDerpy__Remove;
  static Destroy  = __LerpyDerpy__Destroy;
  static Clear    = __LerpyDerpy__Clear;
  
  
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
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : HANDLE CONSTRUCTING.
  
  
  
  #endregion
  // 
  //=============================================================
  
}