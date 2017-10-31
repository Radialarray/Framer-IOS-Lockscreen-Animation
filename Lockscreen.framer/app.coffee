# Import file "IOS Lockscreen"
sketch = Framer.Importer.load("imported/IOS%20Lockscreen@1x", scale: 1)
Utils.globalLayers(sketch)

sketch.LS.x = 0
sketch.LSKEY.x = 0
sketch.HS.x = 0

#Password Dots layers on top as array 
passAct = [Dot1,Dot2,Dot3,Dot4,Dot5,Dot6]

#Active numpad layers as array
numAct = [N0,N1,N2,N3,N4,N5,N6,N7,N8,N9]


#Hide layers
for pass in passAct
	pass.opacity = 0

for num in numAct
	num.opacity  = 0


sketch.LS.onClick ->
	sketch.LS.animate
		opacity: 0

