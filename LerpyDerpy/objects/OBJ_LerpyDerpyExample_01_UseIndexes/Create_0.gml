/// @desc

image_blend = make_color_hsv(64, 64, 255);


// Create group of lerpers,
// these automatically update given keys whenever ".Update()" is called.
self.lerpyDerpy = new LerpyDerpy();


// Get the handles, these are lerper indexes.
self.xlerp = self.lerpyDerpy.Attach(self, "x");
self.ylerp = self.lerpyDerpy.Attach(self, "y");

