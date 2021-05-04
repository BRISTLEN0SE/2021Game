extends Node

var hide_show = 1
var health = 100
var speed = 0
var star = 1
var charname = "spiderman"
var charnum = 1



func _physics_process(delta):
	if charnum in GlobalVariables.player_char:
		if hide_show == 1:
			if GlobalVariables.slot1 == charnum:
				$"slot 1".show()
			if GlobalVariables.slot2 == charnum:
				$"slot 2".show()
			if GlobalVariables.slot3 == charnum:
				$"slot 3".show()
			if GlobalVariables.slot4 == charnum:
				$"slot 4".show()
			if GlobalVariables.slot5 == charnum:
				$"slot 5".show()
	#timer
		if GlobalVariables.full != true:
			print(speed)
			speed += 1
		if speed > 1000:
			GlobalVariables.full = true
		if Input.is_action_just_pressed("ui_down"):
			speed = 0
			GlobalVariables.full = false
		
