/// @desc NUDGE.
alarm[0] = 60;


// Add nudge to the values.
self.lerpyDerpy.PushTargets();
x += random_range(-20, 20);
y += random_range(-20, 20);
image_xscale += random_range(-0.2, 0.2);
image_yscale += random_range(-0.2, 0.2);
image_angle  += random_range(-15, 15);


// Apply the changes.
self.lerpyDerpy.PullTargets();