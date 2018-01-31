# Import file "IOS Lockscreen"
sketch = Framer.Importer.load("imported/IOS%20Lockscreen@1x", scale: 1)
Utils.globalLayers(sketch)

# socket = new WebSocket('ws:127.0.0.1:8000')
# socket.onmessage = (zeichen) ->
# 	fillDot(zeichen.data)

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

for num in numDeact
	num.opacity = 0.8

for num in numAct
	num.opacity  = 0


LS.onClick ->
	LS.animate
		opacity: 0
	LS.on Events.AnimationEnd, (animation, layer) ->
		LS.visible = false

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

# numAct[0].onTap ->
# 	numActAnim[0].start()
# 	numActAnim[0].on Events.AnimationEnd, numActAnimRev[0].start
passCode = []

#IP Adresse ändern
socket = new WebSocket('ws://localhost:8080')
socket.onmessage = (message) ->
	passCode.push(message.data)
	checkPassword(passCode)


numAct[1].onTap ->
	passCode.push(1)
	numAct[1].animate
		opacity: 0.8
		options:
			time:0.3
	numAct[1].onAnimationEnd ->
		numAct[1].animate
			opacity:0
			options:
				time:0.3

numAct[2].onTap ->
	passCode.push(2)
	numAct[2].animate
		opacity: 0.8
		options:
			time:0.3
	numAct[2].onAnimationEnd ->
		numAct[2].animate
			opacity:0
			options:
				time:0.3

numAct[3].onTap ->
	passCode.push(3)
	numAct[3].animate
		opacity: 0.5
		options:
			time:0.3
	numAct[3].onAnimationEnd ->
		numAct[3].animate
			opacity:0
			options:
				time:0.3

numAct[4].onTap ->
	passCode.push(4)
	numAct[4].animate
		opacity: 0.5
		options:
			time:0.3
	numAct[4].onAnimationEnd ->
		numAct[4].animate
			opacity:0
			options:
				time:0.3


# for num in numAct
# 	v = 0
# 	num.onTap ->
# 		passAct[v].opacity = 1
# 		v++
# 		console.log(num)
# 		checkPassword()

v = 0
checkPassword = (pass) ->
	passAct[v].opacity = 1
	v++
	if pass.length ==4 && pass[0]=="1" && pass[1]=="2" && pass[2]=="3" && pass[3] == "4"
		console.log("yeeees")
		LSKEY.animate
			opacity: 0
		LSKEY.on Events.AnimationEnd, (animation, layer) ->
			LSKEY.visible = false
	else
		if (pass.length >3)
			for pass in passAct
				pass.opacity=0
				passCode = []
				v = 0



# if passCo.length ==4 && passCo[0]==1 && passCo[1]==2 && passCo[2]==3 && passCo[3] == 4
# 	LSKEY.animate
# 		opacity: 0
# 	LSKEY.on Events.AnimationEnd, (animation, layer) ->
# 		LSKEY.visible = false
