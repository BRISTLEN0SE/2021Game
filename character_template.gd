extends Node

var health = 100
var speed = 0
var star = 1
var charname = "spiderman"
var charnum = 1



func _physics_process(delta):
	if GlobalVariables.slot1 == charnum or GlobalVariables.slot2 == charnum:
	#timer
		if GlobalVariables.full != true:
			print(speed)
			speed += 1
		if speed > 1000:
			GlobalVariables.full = true
		if Input.is_action_just_pressed("ui_down"):
			speed = 0
			GlobalVariables.full = false
		
