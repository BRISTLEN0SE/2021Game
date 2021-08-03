extends Node

var health = 0
var speed = 1
var random = RandomNumberGenerator.new()
var magechosen = false
var targeted = GlobalVariables.enemy_slot1 -1

var player_char = [GlobalVariables.slot1,GlobalVariables.slot2,GlobalVariables.slot3,GlobalVariables.slot4,GlobalVariables.slot5]

var chara1health = 0
var chara2health = 0
var chara3health = 0
var chara4health = 0
var chara5health = 0
var chara6health = 0
var chara7health = 0
var chara8health = 0
var chara9health = 0
var chara10health = 0
var chara11health = 0



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
	
	$Selected/targeted.set_frame(targeted)
	
	match speed:
		1: 
			if 6 in GlobalVariables.player_char:
				$attacks/attack1.set_frame(6-1)
				health = chara6health
			else:
				speed += 1
		2:
			$attacks/attack1.set_frame(4-1)
			health = chara4health
		3:
			$attacks/attack1.set_frame(10-1)
			health = chara10health
		4:
			$attacks/attack1.set_frame(1-1)
			health = chara1health
		5:
			$attacks/attack1.set_frame(7-1)
			health = chara7health
		6:
			$attacks/attack1.set_frame(8-1)
			health = chara8health
		7:
			$attacks/attack1.set_frame(3-1)
			health = chara3health
		8:
			random.randomize()
			$attacks/attack1.hide()
			$attacks/attack1mage.show()
			if magechosen == false:
				$attacks/attack1mage.set_frame(random.randi_range(0,3))
				magechosen = true
			health = chara5health
		9:
			$attacks/attack1.show()
			$attacks/attack1mage.hide()
			$attacks/attack1.set_frame(9-1)
			magechosen = false
			health = chara9health
		10:
			$attacks/attack1.set_frame(2-1)
			health = chara2health
		11:
			$attacks/attack1.set_frame(11-1)
			health = chara11health
	if speed > 11:
		speed = 1
		
	
	




func _on_enemy1_pressed():
	targeted = GlobalVariables.enemy_slot1-1


func _on_enemy2_pressed():
	targeted = GlobalVariables.enemy_slot2-1


func _on_enemy3_pressed():
	targeted = GlobalVariables.enemy_slot3-1


func _on_enemy4_pressed():
	targeted = GlobalVariables.enemy_slot4-1


func _on_enemy5_pressed():
	targeted = GlobalVariables.enemy_slot5-1


func _on_attack_1_pressed():
	speed += 1
	pass # Replace with function body.


func _on_attack_2_pressed():
	speed += 1
	pass # Replace with function body.


func _on_attack_3_pressed():
	speed += 1
	pass # Replace with function body.
