/// @desc 
/*
  In this example, lerpers have been attached to "x" and "y".
  Therefore ".Update()" applies to lerped values to these fields.
  It means that "Update" also overrides values you manually set.
  
  If you manually set values to something, 
  and then call "PullTargets", then lerper target values are
  set to these values. 
  
*/ 


// Set the target values.
x = mouse_x - 64;
y = mouse_y + 64; 

  
// This reads given target values.
self.lerpyDerpy.PushTargets();
  
  
// This updates the keys.
self.lerpyDerpy.Update();