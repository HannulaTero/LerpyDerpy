/// @desc

image_blend = make_color_hsv(64, 64, 255);


// Create group of lerpers,
// these automatically update given fields whenever ".Update()" is called.
self.lerpyDerpy = new LerpyDerpy();


// Attach wanted fields.
// These return Lerpy's, which can be used handles for granular control.
// LerpyDerpy is used to update the attached values.
self.xlerpy = self.lerpyDerpy.Attach(self, "x");
self.ylerpy = self.lerpyDerpy.Attach(self, "y");

