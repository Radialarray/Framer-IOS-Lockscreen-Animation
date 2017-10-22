# Import file "IOS Lockscreen"
sketch = Framer.Importer.load("imported/IOS%20Lockscreen@1x", scale: 1)
Utils.globalLayers(sketch)


sketch.LSKEY.x=0
sketch.LSKEY.opacity=0
sketch.HS.x=0
sketch.HS.opacity=0



sketch.LS.states= 
	stateA:
		opacity: 1
		animationOptions:
			curve: Bezier.linear
			time: 10
	stateB:
		opacity: 0
	stateC:
		opacity: 0

sketch.LSKEY.states= 
	stateA:
		opacity: 0
	stateB:
		opacity: 1
	stateC:
		opacity: 0


sketch.LS.states= 
	stateA:
		opacity: 0
	stateB:
		opacity: 0
	stateC:
		opacity: 1

sketch.HS.onClick ->
	LS.stateCycle "stateB", "stateC"	
	LSKEY.stateCycle "stateB", "stateC"	
	HS.stateCycle "stateB", "stateC"	
	

sketch.N91.onClick ->
	sketch.N91.animate
		rotation: layer.rotation + 90
		options:
			curve: Spring(damping: 0.5)

