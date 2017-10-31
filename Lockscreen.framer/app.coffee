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
	num.opacity  = 0


LS.onClick ->
	LS.animate
		opacity: 0
	LS.on Events.AnimationEnd, (animation, layer) ->
		LS.visible = false

numActAnim = []
numActAnimRev = []
for i in [0..numAct.length-1]
	numActAnim[i] = new Animation numAct[i],
		opacity:0.5
		options:
			time:0.3
	numActAnimRev[i] = numActAnim[i].reverse()
	
# numAct[0].onTap ->
# 	numAct[0].animate
# 		opacity:0.5
# 		options:
# 			time:0.4
# 	numAct[0].onAnimationEnd ->
# 		numAct[0].animate
# 			opacity:0
# 			options:
# 				time:0.4

numAct[0].onTap ->
	numActAnim[0].start()
	numActAnim[0].on Events.AnimationEnd, numActAnimRev[0].start
# 
# for i in [0..numAct.length-1]
# 	numAct[i].onTap ->
# 		numActAnim[i].start()
# 		numActAnim[0].on Events.AnimationEnd, numActAnimRev[0].start