extends Node


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_down"):
		GlobalVariables.slot1 -=1
		GlobalVariables.slot2 -=1
		GlobalVariables.slot3 -=1
		GlobalVariables.slot4 -=1
		GlobalVariables.slot5 -=1
	if Input.is_action_just_pressed("ui_up"):
		GlobalVariables.slot1 +=1
		GlobalVariables.slot2 +=1
		GlobalVariables.slot3 +=1
		GlobalVariables.slot4 +=1
		GlobalVariables.slot5 +=1
