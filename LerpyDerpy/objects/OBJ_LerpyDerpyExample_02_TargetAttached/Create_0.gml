/// @desc

image_blend = make_color_hsv(128, 64, 255);


// Create group of lerpers,
// Storing the lerper indexes is optional,
// and not needed if you the PullTargets-approach used in the example.
self.lerpyDerpy = new LerpyDerpy();
self.lerpyDerpy.Attach(self, "x");
self.lerpyDerpy.Attach(self, "y");


// You can set different acceleration and dampening,
// which affects whole group.
self.lerpyDerpy.SetAcceleration(7.6);
self.lerpyDerpy.SetDampening(0.70);
