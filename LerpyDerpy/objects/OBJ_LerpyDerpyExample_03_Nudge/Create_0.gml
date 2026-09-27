/// @desc

image_blend = make_color_hsv(0, 0, 255);

alarm[0] = 60;


// Create group of lerpers.
self.lerpyDerpy = new LerpyDerpy();
self.lerpyDerpy.Attach(self, "x");
self.lerpyDerpy.Attach(self, "y");
self.lerpyDerpy.Attach(self, "image_xscale");
self.lerpyDerpy.Attach(self, "image_yscale");
self.lerpyDerpy.Attach(self, "image_angle");


self.lerpyDerpy.SetAcceleration(random_range(6, 9));
self.lerpyDerpy.SetDampening(random_range(0.7, 0.85));