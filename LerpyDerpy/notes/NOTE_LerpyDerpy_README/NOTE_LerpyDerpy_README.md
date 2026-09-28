---
# LERPYDERPY

#### Value lerping with momentum.

#### Tero Hannula 29.9.2026

---

### GENERAL INFORMATION

---
https://github.com/HannulaTero/LerpyDerpy

https://terohannula.itch.io/lerpyderpy

The asset handles making values approach with smooth motion,
allowing bounciness and overshooting. 

In this asset there is `Lerpy` and `LerpyDerpy`.
`Lerpy` is the actual lerper construct, and `LerpDerpy` is collection of lerpers.
The collection attaches new lerper to given field _(scope and key)_,
so updating the collection automatically updates attached fields.
`Lerpy` is not attached to field without `LerpyDerpy`, and can be used as stand-alone.

Attaching fields to `LerpyDerpy` returns the `Lerpy`, 
which can be used to change the target point or its parameters.
Updating `LerpyDerpy` updates the fields accordingly, 
but you can also utilize `.PullTargets()` and `.PushTargets()` to 
change fields yourself, and these changes are assigned as new targets.

---

### HOW TO USE EXAMPLE - LERPY

---
```gml
// CREATE -EVENT.
self.xlerpy = new Lerpy(x);
self.ylerpy = new Lerpy(y);
  
// ALARM -EVENT.
// Updating the target values.
self.xlerpy.SetTarget(choose(256, 512));
self.ylerpy.SetTarget(choose(256, 512));
  
// STEP -EVENT.
x = self.xlerpy.Update().Get();
y = self.ylerpy.Update().Get();
```

---

### HOW TO USE EXAMPLE - LERPYDERPY

---
```gml
// CREATE -EVENT.
self.lerpyDerpy = new LerpyDerpy();
self.lerpyDerpy.Attach(self, "x");
self.lerpyDerpy.Attach(self, "y");
  
// ALARM -EVENT.
// Updating the target values.
// If you want to update relatively, 
// then you need to use .PullTargets() first.
x = choose(256, 512);
y = choose(256, 512);
self.lerpyDerpy.PushTargets();
  
// STEP -EVENT.
self.lerpyDerpy.Update();
```
---