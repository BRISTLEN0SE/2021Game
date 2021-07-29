extends Node

var health = 1
var speed = 1
var random = RandomNumberGenerator.new()
var attack = 1
var current = 0
var magechosen = false

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_up"):
		speed += 1
	if Input.is_action_just_pressed("ui_focus_prev"):
		get_tree().change_scene("res://character_selector.tscn")
	$characters/slot1.set_frame(GlobalVariables.slot1-1)
	$characters/slot2.set_frame(GlobalVariables.slot2-1)
	$characters/slot3.set_frame(GlobalVariables.slot3-1)
	$characters/slot4.set_frame(GlobalVariables.slot4-1)
	$characters/slot5.set_frame(GlobalVariables.slot5-1)
	$characters/slot6.set_frame(GlobalVariables.enemy_slot1-1)
	$characters/slot7.set_frame(GlobalVariables.enemy_slot2-1)
	$characters/slot8.set_frame(GlobalVariables.enemy_slot3-1)
	$characters/slot9.set_frame(GlobalVariables.enemy_slot4-1)
	$characters/slot10.set_frame(GlobalVariables.enemy_slot5-1)
	
	match speed:
		1: 
			$attacks/attack1.set_frame(6-1)
		2:
			$attacks/attack1.set_frame(4-1)
		3:
			$attacks/attack1.set_frame(10-1)
		4:
			$attacks/attack1.set_frame(1-1)
		5:
			$attacks/attack1.set_frame(7-1)
		6:
			$attacks/attack1.set_frame(8-1)
		7:
			$attacks/attack1.set_frame(3-1)
		8:
			random.randomize()
			$attacks/attack1.hide()
			$attacks/attack1mage.show()
			if magechosen == false:
				$attacks/attack1mage.set_frame(random.randi_range(0,3))
				magechosen = true
		9:
			$attacks/attack1.show()
			$attacks/attack1mage.hide()
			$attacks/attack1.set_frame(9-1)
			magechosen = false
		10:
			$attacks/attack1.set_frame(2-1)
		11:
			$attacks/attack1.set_frame(11-1)
	if speed > 11:
		speed = 1
		
	
	


