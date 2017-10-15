# Import file "IOS Lockscreen"
sketch = Framer.Importer.load("imported/IOS%20Lockscreen@1x", scale: 1)
Utils.globalLayers(sketch)


sketch.Lock_Screen_Keyboard.x=0
sketch.Lock_Screen_Keyboard.opacity=0
sketch.Homescreen.x=0
sketch.Homescreen.opacity=0



sketch.Lock_screen.states= 
	stateA:
		opacity: 1
		animationOptions:
			curve: Bezier.linear
			time: 10
	stateB:
		opacity: 0
	stateC:
		opacity: 0

sketch.Lock_Screen_Keyboard.states= 
	stateA:
		opacity: 0
	stateB:
		opacity: 1
	stateC:
		opacity: 0


sketch.Homescreen.states= 
	stateA:
		opacity: 0
	stateB:
		opacity: 0
	stateC:
		opacity: 1

sketch.Homescreen.onClick ->
	Lock_screen.stateCycle "stateA", "stateB", "stateC"	
	Lock_Screen_Keyboard.stateCycle "stateA", "stateB", "stateC"	
	Homescreen.stateCycle "stateA", "stateB", "stateC"	
