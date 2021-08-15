extends Node

var speed = 1
var random = RandomNumberGenerator.new()
var magechosen = false
var targeted = GlobalVariables.enemy_slot1 -1
var current = GlobalVariables.slot1 -1

var player_char = [GlobalVariables.slot1,GlobalVariables.slot2,GlobalVariables.slot3,GlobalVariables.slot4,GlobalVariables.slot5]
var playing = false

var chara1 = player_char.count(1)
var chara2 = player_char.count(2)
var chara3 = player_char.count(3)
var chara4 = player_char.count(4)
var chara5 = player_char.count(5)
var chara6 = player_char.count(6)
var chara7 = player_char.count(7)
var chara8 = player_char.count(8)
var chara9 = player_char.count(9)
var chara10 = player_char.count(10)
var chara11 = player_char.count(11)

var slot1health = 0
var slot2health = 0
var slot3health = 0
var slot4health = 0
var slot5health = 0
var enemyslot1health = 20
var enemyslot2health = 40
var enemyslot3health = 60
var enemyslot4health = 80
var enemyslot5health = 100

var current_health = 0
var targeted_health = enemyslot1health


func _physics_process(delta):
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
	$Selected/current.set_frame(current)
	$Selected/targeted/healtht.value = targeted_health
	
	if playing == false:
		$music/chara11.stop()
	
	if speed > 11:
		chara1 = player_char.count(1)
		chara2 = player_char.count(2)
		chara3 = player_char.count(3)
		chara4 = player_char.count(4)
		chara5 = player_char.count(5)
		chara6 = player_char.count(6)
		chara7 = player_char.count(7)
		chara8 = player_char.count(8)
		chara9 = player_char.count(9)
		chara10 = player_char.count(10)
		chara11 = player_char.count(11)
		speed = 1
	
	if magechosen == false:
		$attacks/attack1.show()
		$attacks/attack1mage.hide()

	match speed:
		1: 
			if chara6 > 0:
				$attacks/attack1.set_frame(6-1)
				$Selected/current.set_frame(6-1)
			else:
				speed += 1
		2:
			if chara4 > 0:
				$attacks/attack1.set_frame(4-1)
				$Selected/current.set_frame(4-1)
			else:
				speed += 1
		3:
			if chara10 > 0:
				$attacks/attack1.set_frame(10-1)
				$Selected/current.set_frame(10-1)
			else:
				speed += 1
		4:
			if chara1 > 0:
				$attacks/attack1.set_frame(1-1)
				$Selected/current.set_frame(1-1)
			else:
				speed += 1
		5:
			if chara7 > 0:
				$attacks/attack1.set_frame(7-1)
				$Selected/current.set_frame(7-1)
			else:
				speed += 1
		6:
			if chara8 > 0:
				$attacks/attack1.set_frame(8-1)
				$Selected/current.set_frame(8-1)
			else:
				speed += 1
		7:
			if chara3 > 0:
				$attacks/attack1.set_frame(3-1)
				$Selected/current.set_frame(3-1)
			else:
				speed += 1
		8:
			if chara5 > 0:
				random.randomize()
				$attacks/attack1.hide()
				$attacks/attack1mage.show()
				$Selected/current.set_frame(5-1)
				if magechosen == false:
					$attacks/attack1mage.set_frame(random.randi_range(0,3))
					magechosen = true
			else:
				speed += 1
		9:
			if chara9 > 0:
				$attacks/attack1.set_frame(9-1)
				$Selected/current.set_frame(9-1)
			else:
				speed += 1
		10:
			if chara2 > 0:
				$attacks/attack1.set_frame(2-1)
				$Selected/current.set_frame(2-1)
			else:
				speed += 1
		11:
			if chara11 > 0:
				$attacks/attack1.set_frame(11-1)
				$Selected/current.set_frame(11-1)
				if playing == false:
					$music/chara11.play()
					playing = true
					
			else:
				playing = false
				speed += 1




func _on_enemy1_pressed():
	targeted = GlobalVariables.enemy_slot1-1
	targeted_health = enemyslot1health


func _on_enemy2_pressed():
	targeted = GlobalVariables.enemy_slot2-1
	targeted_health = enemyslot2health


func _on_enemy3_pressed():
	targeted = GlobalVariables.enemy_slot3-1
	targeted_health = enemyslot3health


func _on_enemy4_pressed():
	targeted = GlobalVariables.enemy_slot4-1
	targeted_health = enemyslot4health


func _on_enemy5_pressed():
	targeted = GlobalVariables.enemy_slot5-1
	targeted_health = enemyslot5health




func _on_attack_2_pressed():
	speed += 1
	pass # Replace with function body.


func _on_attack_3_pressed():
	speed += 1
	pass # Replace with function body.


func _on_attack_1_pressed():
	match speed:
		1:
			chara6 -= 1
		2:
			chara4 -= 1
		3:
			chara10 -= 1
		4:
			chara1 -= 1
		5:
			chara7 -= 1
		6:
			chara8 -= 1
		7:
			chara3 -= 1
		8:
			chara5 -= 1
			magechosen = false
		9:
			chara9 -= 1
		10:
			chara2 -= 1
		11:
			chara11 -= 1


func _on_Back_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
