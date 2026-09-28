/// @desc CHANGE THE TARGET.

alarm[0] = 15;


// Set the target values.
self.lerpyDerpy.GetLerpy(self, "x").SetTarget(mouse_x + 64);
self.lerpyDerpy.GetLerpy(self, "y").SetTarget(mouse_y - 64);