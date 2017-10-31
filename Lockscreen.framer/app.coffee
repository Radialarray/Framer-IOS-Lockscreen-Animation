# Import file "IOS Lockscreen"
sketch = Framer.Importer.load("imported/IOS%20Lockscreen@1x", scale: 1)
Utils.globalLayers(sketch)

LS.x = 0
LSKEY.x = 0
HS.x=0

#Password Dots layers on top as array 
passAct = [Dot1,Dot2,Dot3,Dot4,Dot5,Dot6]

#Active numpad layers as array
numAct = [N0,N1,N2,N3,N4,N5,N6,N7,N8,N9]

numDeact = [N01,N11,N21,N31,N41,N51,N61,N71,N81,N91]


#Hide layers
for pass in passAct
	pass.opacity = 0

for num in numAct
	num.opacity  = 1


LS.onClick ->
	LS.animate
		opacity: 0
	LS.on Events.AnimationEnd, (animation, layer) ->
		LS.visible = false



LSKEY.onClick ->
	console.log("hello")
	LSKEY.animate
		opacity:0
		visible: false