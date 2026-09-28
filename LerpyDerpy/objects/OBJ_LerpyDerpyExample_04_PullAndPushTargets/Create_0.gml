/// @desc

image_blend = make_color_hsv(0, 0, 192);
image_xscale = random_range(1.5, 2.0);
image_yscale = image_xscale;

alarm[0] = irandom_range(30, 180);


// Create group of lerpers.
self.lerpyDerpy = new LerpyDerpy();
self.lerpyDerpy.Attach(self, "x");
self.lerpyDerpy.Attach(self, "y");
self.lerpyDerpy.Attach(self, "image_xscale");
self.lerpyDerpy.Attach(self, "image_yscale");
self.lerpyDerpy.Attach(self, "image_angle");


self.lerpyDerpy.SetAcceleration(random_range(6, 9));
self.lerpyDerpy.SetDampening(random_range(0.7, 0.85));