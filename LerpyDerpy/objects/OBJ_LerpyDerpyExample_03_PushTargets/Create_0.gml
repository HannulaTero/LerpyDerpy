/// @desc

image_blend = make_color_hsv(192, 64, 255);


// Create group of lerpers.
self.lerpyDerpy = new LerpyDerpy();


// You can set different acceleration and dampening,
// which affects whole group.
self.lerpyDerpy.SetAcceleration(7.6);
self.lerpyDerpy.SetDampening(0.70);


// Attach fields.
self.lerpyDerpy.Attach(self, "x");
self.lerpyDerpy.Attach(self, "y");

