/// @desc

image_blend = make_color_hsv(128, 64, 255);


// Create group of lerpers,
// these automatically update given keys whenever ".Update()" is called.
// Lerper indexes are not stored in this example.
self.lerpyDerpy = new LerpyDerpy();
self.lerpyDerpy.Attach(self, "x");
self.lerpyDerpy.Attach(self, "y");

