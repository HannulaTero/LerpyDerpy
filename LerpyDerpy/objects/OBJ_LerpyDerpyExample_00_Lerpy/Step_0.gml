/// @desc UPDATE THE LERPERS.


// Upate the lerpers to target positions.
// You can chain values, and update immediately.
self.xlerp.SetTarget(mouse_x + 64).Update();
self.ylerp.SetTarget(mouse_y + 64).Update();


// Read the lerper values.
self.x = self.xlerp.Get();
self.y = self.ylerp.Get();
