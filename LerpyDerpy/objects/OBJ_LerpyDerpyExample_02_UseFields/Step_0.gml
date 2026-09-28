/// @desc 

// Set the target values.
// You may use "Field"-variants of methods, instead of using lerper-indexes.
self.lerpyDerpy.FieldSetTarget(self, "x", mouse_x + 64);
self.lerpyDerpy.FieldSetTarget(self, "y", mouse_y - 64);
  
// This updates the keys.
self.lerpyDerpy.Update();