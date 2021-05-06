extends Node

var hide_show = 1
var health = 100
var speed = 0
var star = 1
var charname = "spiderman"
var charnum = 1



func _physics_process(delta):
	if charnum in GlobalVariables.characters:
		if hide_show == 1:
			if GlobalVariables.slot1 == charnum:
				$player/slot_1.show()
			if GlobalVariables.slot2 == charnum:
				$player/slot_2.show()
			if GlobalVariables.slot3 == charnum:
				$player/slot_3.show()
			if GlobalVariables.slot4 == charnum:
				$player/slot_4.show()
			if GlobalVariables.slot5 == charnum:
				$player/slot_5.show()
			if GlobalVariables.slot1 != charnum:
				$player/slot_1.hide()
			if GlobalVariables.slot2 != charnum:
				$player/slot_2.hide()
			if GlobalVariables.slot3 != charnum:
				$player/slot_3.hide()
			if GlobalVariables.slot4 != charnum:
				$player/slot_4.hide()
			if GlobalVariables.slot5 != charnum:	
				$player/slot_5.hide()
	#timer
		if GlobalVariables.full != true:
			print(speed)
			speed += 1
		if speed > 1000:
			GlobalVariables.full = true
		if Input.is_action_just_pressed("ui_select"):
			speed = 0
			GlobalVariables.full = false
		
