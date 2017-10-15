# Import file "IOS Lockscreen"
sketch = Framer.Importer.load("imported/IOS%20Lockscreen@1x", scale: 1)
Utils.globalLayers(sketch)




# Custom transition 
fadeTransition = (Lock_screen, Lock_Screen_Keyboard, overlay) ->
    transition =
        Lock_screen:
            show:
                scale: 1.0
                opacity: 1
            hide:
                scale: 1
                opacity: 0
        Lock_Screen_Keyboard:
            show:
                scale: 1.0
                opacity: 1
            hide:
                scale: 1
                opacity: 0

# # Set up FlowComponent
flow = new FlowComponent
flow.showNext(sketch.Lock_screen)
# Switch on click
sketch.Lock_screen.onClick ->
	flow.showNext(sketch.Lock_Screen_Keyboard,fadeTransition)

sketch.Lock_Screen_Keyboard.onClick ->
	flow.showNext(sketch.Lock_screen, fadeTransition)
