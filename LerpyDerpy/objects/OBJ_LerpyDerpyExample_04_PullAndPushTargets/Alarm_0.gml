/// @desc NUDGE.
alarm[0] = irandom_range(30, 180);


// Get target values to fields.
// This ensures the relative changes 
// are not made into mid-position, but into target position.
self.lerpyDerpy.PullTargets();


// Add nudge to the values.
x += random_range(-20, 20);
y += random_range(-20, 20);
image_xscale += random_range(-0.2, 0.2);
image_yscale += random_range(-0.2, 0.2);
image_angle  += random_range(-15, 15);


// Apply the changes.
self.lerpyDerpy.PushTargets();