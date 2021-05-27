extends Node

#enemy attacks

var hide_show = 1
var health = 100
var attack = 1
var attack1 = 10
var attack2 = 20
var attack3 = 30

var speed = 0
var max_speed = 200
var base_speed = 100
var start_speed = true
var tie = true

var charge_enabled = true

var star = 1
var level = 1

var charname = "spiderman"
var charnum = 1

var slot = 1
var changed = false



func _physics_process(delta):
	if charnum in GlobalVariables.player_char or charnum in GlobalVariables.enemy_char:
		if hide_show == 1:
			#swap system
			if changed != true:
				if GlobalVariables.character1_created != true and GlobalVariables.slot1 == charnum:
					GlobalVariables.character1_created = true
					$player/slot_1.show()
					changed = true
				elif GlobalVariables.character2_created != true and GlobalVariables.slot2 == charnum:
					GlobalVariables.character2_created = true
					$player/slot_2.show()
					changed = true
				elif GlobalVariables.character3_created != true and GlobalVariables.slot3 == charnum:
					GlobalVariables.character3_created = true
					$player/slot_3.show()
					changed = true
				elif GlobalVariables.character4_created != true and GlobalVariables.slot4 == charnum:
					GlobalVariables.character4_created = true
					$player/slot_4.show()
					changed = true
				elif GlobalVariables.character5_created != true and GlobalVariables.slot5 == charnum:
					GlobalVariables.character5_created = true
					$player/slot_5.show()
					changed = true
					
				elif GlobalVariables.character6_created != true and GlobalVariables.enemy_slot1 == charnum:
					GlobalVariables.character6_created = true
					$enemy/enemy_slot1.show()
					GlobalVariables.enemy_slot1_health = health
					changed = true
				elif GlobalVariables.character7_created != true and GlobalVariables.enemy_slot2 == charnum:
					GlobalVariables.character7_created = true
					$enemy/enemy_slot2.show()
					GlobalVariables.enemy_slot2_health = health
					changed = true
				elif GlobalVariables.character8_created != true and GlobalVariables.enemy_slot3 == charnum:
					GlobalVariables.character8_created = true
					$enemy/enemy_slot3.show()
					GlobalVariables.enemy_slot3_health = health
					changed = true
				elif GlobalVariables.character9_created != true and GlobalVariables.enemy_slot4 == charnum:
					GlobalVariables.character9_created = true
					$enemy/enemy_slot4.show()
					GlobalVariables.enemy_slot4_health = health
					changed = true
				elif GlobalVariables.character10_created != true and GlobalVariables.enemy_slot5 == charnum:
					GlobalVariables.character10_created = true
					$enemy/enemy_slot5.show()
					GlobalVariables.enemy_slot5_health = health
					changed = true
				
			if $player/slot_1.is_visible_in_tree() == true:
				slot = 1
				GlobalVariables.slot1_attack = attack
				GlobalVariables.slot1_health = health
			if $player/slot_2.is_visible_in_tree() == true:
				slot = 2
				GlobalVariables.slot2_attack = attack
				GlobalVariables.slot2_health = health
			if $player/slot_3.is_visible_in_tree() == true:
				slot = 3
				GlobalVariables.slot3_attack = attack
				GlobalVariables.slot3_health = health
			if $player/slot_4.is_visible_in_tree() == true:
				slot = 4
				GlobalVariables.slot4_attack = attack
				GlobalVariables.slot4_health = health
			if $player/slot_5.is_visible_in_tree() == true:
				slot = 5
				GlobalVariables.slot5_attack = attack
				GlobalVariables.slot5_health = health
				
			if $enemy/enemy_slot1.is_visible_in_tree() == true:
				slot = 6
				GlobalVariables.enemy_slot1_attack = attack
				if GlobalVariables.enemy_slot1_health < 1:
					GlobalVariables.target = false
					queue_free()
				if GlobalVariables.targeted == 6:
					$other/targeted_character.show()
			if $enemy/enemy_slot2.is_visible_in_tree() == true:
				slot = 7
				GlobalVariables.enemy_slot2_attack = attack
				if GlobalVariables.enemy_slot2_health < 1:
					GlobalVariables.target = false
					queue_free()
				if GlobalVariables.targeted == 7:
					$other/targeted_character.show()
			if $enemy/enemy_slot3.is_visible_in_tree() == true:
				slot = 8
				GlobalVariables.enemy_slot3_attack = attack
				if GlobalVariables.enemy_slot3_health < 1:
					GlobalVariables.target = false
					queue_free()
				if GlobalVariables.targeted == 8:
					$other/targeted_character.show()
			if $enemy/enemy_slot4.is_visible_in_tree() == true:
				slot = 9
				GlobalVariables.enemy_slot4_attack = attack
				if GlobalVariables.enemy_slot4_health < 1:
					GlobalVariables.target = false
					queue_free()
				if GlobalVariables.targeted == 9:
					$other/targeted_character.show()
			if $enemy/enemy_slot5.is_visible_in_tree() == true:
				slot = 10
				GlobalVariables.enemy_slot5_attack = attack
				if GlobalVariables.enemy_slot5_health < 1:
					GlobalVariables.target = false
					queue_free()
				if GlobalVariables.targeted == 10:
					$other/targeted_character.show()
			
			
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
			#enemy
			if GlobalVariables.enemy_slot1 != charnum:
				$enemy/enemy_slot1.hide()
			if GlobalVariables.enemy_slot2 != charnum:
				$enemy/enemy_slot2.hide()
			if GlobalVariables.enemy_slot3 != charnum:
				$enemy/enemy_slot3.hide()
			if GlobalVariables.enemy_slot4 != charnum:
				$enemy/enemy_slot4.hide()
			if GlobalVariables.enemy_slot5 != charnum:
				$enemy/enemy_slot5.hide()

	
		if start_speed == true:
			speed = base_speed
			start_speed = false
			
		if GlobalVariables.full != true:
			speed += 1
			if GlobalVariables.targeted != charnum:
				$other/targeted_character.hide()
		if speed > max_speed:
			GlobalVariables.full = true
			if charnum in GlobalVariables.player_char:
				if slot < 6:
					$other/current_character.show()
					$attack_1.show()
					$attack_2.show()
					$attack_3.show()
					$attack_2_charge.show()
					$attack_3_charge.show()
			if charge_enabled == true:
				$attack_2_charge.value += 34
				$attack_3_charge.value += 20
				charge_enabled = false
			if slot > 5:
				start_speed = true
				charge_enabled = true
				GlobalVariables.full = false

func _on_attack_1_pressed():
	if GlobalVariables.target == true:
		attack = attack1
		$attack_1.hide()
		$attack_2.hide()
		$attack_3.hide()
		$attack_2_charge.hide()
		$attack_3_charge.hide()
		$other/current_character.hide()
		if GlobalVariables.targeted == 6:
			GlobalVariables.enemy_slot1_health -= attack
		if GlobalVariables.targeted == 7:
			GlobalVariables.enemy_slot2_health -= attack
		if GlobalVariables.targeted == 8:
			GlobalVariables.enemy_slot3_health -= attack
		if GlobalVariables.targeted == 9:
			GlobalVariables.enemy_slot4_health -= attack
		if GlobalVariables.targeted == 10:
			GlobalVariables.enemy_slot5_health -= attack
		start_speed = true
		charge_enabled = true
		GlobalVariables.full = false

func _on_attack_2_pressed():
	if GlobalVariables.target == true:
		if $attack_2_charge.value >= 100:
			attack = attack2
			$attack_1.hide()
			$attack_2.hide()
			$attack_3.hide()
			$attack_2_charge.hide()
			$attack_3_charge.hide()
			$other/current_character.hide()
			start_speed = true
			charge_enabled = true
			$attack_2_charge.value = 0
			GlobalVariables.full = false


func _on_attack_3_pressed():
	if GlobalVariables.target == true:
		if $attack_3_charge.value >= 100:
			attack = attack3
			$attack_1.hide()
			$attack_2.hide()
			$attack_3.hide()
			$attack_2_charge.hide()
			$attack_3_charge.hide()
			$other/current_character.hide()
			start_speed = true
			charge_enabled = true
			$attack_3_charge.value = 0
			GlobalVariables.full = false


func _on_enemy_slot1_pressed():
	GlobalVariables.targeted = 6
	GlobalVariables.target = true

func _on_enemy_slot2_pressed():
	GlobalVariables.targeted = 7
	GlobalVariables.target = true

func _on_enemy_slot3_pressed():
	GlobalVariables.targeted = 8
	GlobalVariables.target = true

func _on_enemy_slot4_pressed():
	GlobalVariables.targeted = 9
	GlobalVariables.target = true

func _on_enemy_slot5_pressed():
	GlobalVariables.targeted = 10
	GlobalVariables.target = true

