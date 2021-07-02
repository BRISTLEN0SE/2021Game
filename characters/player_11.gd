extends Node

#status effects
#taunt
#stealth
#bleed - remove after turn
#sleep - skip turn
#blind
#disable/lock

#perish - if die kill attacker 
#invincibile/deathproof

#attacks
#heal
#revive
#hp drain
#speed drain
#attack/defense buff/debuff
#haste/slow buff/debuff

var health = 100
var attack = 1
var attack1 = 10
var attack2 = 20
var attack3 = 30
var attack2_charge = 34
var attack3_charge = 20

var speed = 0
var max_speed = 100
var base_speed = 2
var charnum = 11


var star = 1
var level = 1
var charname = "spiderman"


var slot = 1
var start_speed = true
var changed = false

var hide_show = 1
var charge_enabled = true
var random = RandomNumberGenerator.new()



func _physics_process(delta):
	if charnum in GlobalVariables.player_char or charnum in GlobalVariables.enemy_char:
		if hide_show == 1:
			#swap system
			if changed != true:
				if GlobalVariables.character1_created != true and GlobalVariables.slot1 == charnum:
					GlobalVariables.character1_created = true
					$player/slot_1.show()
					GlobalVariables.slot1_health = health
					changed = true
				elif GlobalVariables.character2_created != true and GlobalVariables.slot2 == charnum:
					GlobalVariables.character2_created = true
					$player/slot_2.show()
					GlobalVariables.slot2_health = health
					changed = true
				elif GlobalVariables.character3_created != true and GlobalVariables.slot3 == charnum:
					GlobalVariables.character3_created = true
					$player/slot_3.show()
					GlobalVariables.slot3_health = health
					changed = true
				elif GlobalVariables.character4_created != true and GlobalVariables.slot4 == charnum:
					GlobalVariables.character4_created = true
					$player/slot_4.show()
					GlobalVariables.slot4_health = health
					changed = true
				elif GlobalVariables.character5_created != true and GlobalVariables.slot5 == charnum:
					GlobalVariables.character5_created = true
					$player/slot_5.show()
					GlobalVariables.slot5_health = health
					changed = true
					
				elif GlobalVariables.character6_created != true and GlobalVariables.enemy_slot1 == charnum:
					GlobalVariables.character6_created = true
					$enemy/enemy_slot1.show()
					$enemy/enemy1.show()
					GlobalVariables.enemy_slot1_health = health
					changed = true
				elif GlobalVariables.character7_created != true and GlobalVariables.enemy_slot2 == charnum:
					GlobalVariables.character7_created = true
					$enemy/enemy_slot2.show()
					$enemy/enemy2.show()
					GlobalVariables.enemy_slot2_health = health
					changed = true
				elif GlobalVariables.character8_created != true and GlobalVariables.enemy_slot3 == charnum:
					GlobalVariables.character8_created = true
					$enemy/enemy_slot3.show()
					$enemy/enemy3.show()
					GlobalVariables.enemy_slot3_health = health
					changed = true
				elif GlobalVariables.character9_created != true and GlobalVariables.enemy_slot4 == charnum:
					GlobalVariables.character9_created = true
					$enemy/enemy_slot4.show()
					$enemy/enemy4.show()
					GlobalVariables.enemy_slot4_health = health
					changed = true
				elif GlobalVariables.character10_created != true and GlobalVariables.enemy_slot5 == charnum:
					GlobalVariables.character10_created = true
					$enemy/enemy_slot5.show()
					$enemy/enemy5.show()
					GlobalVariables.enemy_slot5_health = health
					changed = true
			if $player/slot_1.is_visible_in_tree():
				slot = 1
				GlobalVariables.slot1_attack = attack
				GlobalVariables.slot1_speed = speed
				if GlobalVariables.slot1_health < 1:
					GlobalVariables.death_count += 1
					queue_free()
			if $player/slot_2.is_visible_in_tree():
				slot = 2
				GlobalVariables.slot2_attack = attack
				GlobalVariables.slot2_speed = speed
				if GlobalVariables.slot2_health < 1:
					GlobalVariables.death_count += 1
					queue_free()
			if $player/slot_3.is_visible_in_tree():
				slot = 3
				GlobalVariables.slot3_attack = attack
				GlobalVariables.slot3_speed = speed
				if GlobalVariables.slot3_health < 1:
					GlobalVariables.death_count += 1
					queue_free()
			if $player/slot_4.is_visible_in_tree():
				slot = 4
				GlobalVariables.slot4_attack = attack
				GlobalVariables.slot4_speed = speed
				if GlobalVariables.slot4_health < 1:
					GlobalVariables.death_count += 1
					queue_free()
			if $player/slot_5.is_visible_in_tree():
				slot = 5
				GlobalVariables.slot5_attack = attack
				GlobalVariables.slot5_speed = speed
				if GlobalVariables.slot5_health < 1:
					GlobalVariables.death_count += 1
					queue_free()
				
			if $enemy/enemy_slot1.is_visible_in_tree():
				slot = 6
				GlobalVariables.enemy_slot1_attack = attack
				GlobalVariables.enemy_slot1_speed = speed
				if GlobalVariables.enemy_slot1_health < 1:
					GlobalVariables.target = false
					GlobalVariables.death_count += 1
					queue_free()
				if GlobalVariables.targeted == 6:
					$other/targeted_character.show()
				if GlobalVariables.targeted != 6:
					$other/targeted_character.hide()
			if $enemy/enemy_slot2.is_visible_in_tree():
				slot = 7
				GlobalVariables.enemy_slot2_attack = attack
				GlobalVariables.enemy_slot2_speed = speed
				if GlobalVariables.enemy_slot2_health < 1:
					GlobalVariables.target = false
					GlobalVariables.death_count += 1
					queue_free()
				if GlobalVariables.targeted == 7:
					$other/targeted_character.show()
				if GlobalVariables.targeted != 7:
					$other/targeted_character.hide()
			if $enemy/enemy_slot3.is_visible_in_tree():
				slot = 8
				GlobalVariables.enemy_slot3_attack = attack
				GlobalVariables.enemy_slot3_speed = speed
				if GlobalVariables.enemy_slot3_health < 1:
					GlobalVariables.target = false
					GlobalVariables.death_count += 1
					queue_free()
				if GlobalVariables.targeted == 8:
					$other/targeted_character.show()
				if GlobalVariables.targeted != 8:
					$other/targeted_character.hide()
			if $enemy/enemy_slot4.is_visible_in_tree():
				slot = 9
				GlobalVariables.enemy_slot4_attack = attack
				GlobalVariables.enemy_slot4_speed = speed
				if GlobalVariables.enemy_slot4_health < 1:
					GlobalVariables.target = false
					GlobalVariables.death_count += 1
					queue_free()
				if GlobalVariables.targeted == 9:
					$other/targeted_character.show()
				if GlobalVariables.targeted != 9:
					$other/targeted_character.hide()
			if $enemy/enemy_slot5.is_visible_in_tree():
				slot = 10
				GlobalVariables.enemy_slot5_attack = attack
				GlobalVariables.enemy_slot5_speed = speed
				if GlobalVariables.enemy_slot5_health < 1:
					GlobalVariables.target = false
					GlobalVariables.death_count += 1
					queue_free()
				if GlobalVariables.targeted == 10:
					$other/targeted_character.show()
				if GlobalVariables.targeted != 10:
					$other/targeted_character.hide()
			
			
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
				$enemy/enemy1.hide()
			if GlobalVariables.enemy_slot2 != charnum:
				$enemy/enemy_slot2.hide()
				$enemy/enemy2.hide()
			if GlobalVariables.enemy_slot3 != charnum:
				$enemy/enemy_slot3.hide()
				$enemy/enemy3.hide()
			if GlobalVariables.enemy_slot4 != charnum:
				$enemy/enemy_slot4.hide()
				$enemy/enemy4.hide()
			if GlobalVariables.enemy_slot5 != charnum:
				$enemy/enemy_slot5.hide()
				$enemy/enemy5.hide()

	
		if start_speed == true:
			speed = base_speed
			start_speed = false
			
		if GlobalVariables.full != true:
			speed += 1
		if speed > max_speed:
			GlobalVariables.full = true
			if charnum in GlobalVariables.player_char:
				if slot < 6:
					$other/current_character.show()
					$attack_1.show()
					$attack_2.show()
					$attack_3.show()
					$attack1.show()
					$attack2.show()
					$attack3.show()
					$attack_2_charge.show()
					$attack_3_charge.show()
					if $player/slot_1.is_visible_in_tree() == true:
						GlobalVariables.current = 1
					if $player/slot_2.is_visible_in_tree() == true:
						GlobalVariables.current = 2
					if $player/slot_3.is_visible_in_tree() == true:
						GlobalVariables.current = 3
					if $player/slot_4.is_visible_in_tree() == true:
						GlobalVariables.current = 4
					if $player/slot_5.is_visible_in_tree() == true:
						GlobalVariables.current = 5
			if charge_enabled == true:
				$attack_2_charge.value += attack2_charge
				$attack_3_charge.value += attack3_charge
				charge_enabled = false
			if slot > 5:
				random.randomize()
				GlobalVariables.player_targeted = random.randi_range(1,5)
				
				if GlobalVariables.slot1_health > 0:
					if GlobalVariables.player_targeted == 1:
						if $attack_3_charge.value >= 100:
							attack = attack3
							GlobalVariables.slot1_health -= attack
							$attack_3_charge.value = 0
						elif $attack_2_charge.value >= 100:
							attack = attack2
							GlobalVariables.slot1_health -= attack
							$attack_2_charge.value = 0
						else:
							attack = attack1
							GlobalVariables.slot1_health -= attack
						start_speed = true
						charge_enabled = true
						GlobalVariables.full = false
					
				if GlobalVariables.slot2_health > 0:
					if GlobalVariables.player_targeted == 2:
						if $attack_3_charge.value >= 100:
							attack = attack3
							GlobalVariables.slot2_health -= attack
							$attack_3_charge.value = 0
						elif $attack_2_charge.value >= 100:
							attack = attack2
							GlobalVariables.slot2_health -= attack
							$attack_2_charge.value = 0
						else:
							attack = attack1
							GlobalVariables.slot2_health -= attack
						start_speed = true
						charge_enabled = true
						GlobalVariables.full = false
						
				if GlobalVariables.slot3_health > 0:
					if GlobalVariables.player_targeted == 3:
						if $attack_3_charge.value >= 100:
							attack = attack3
							GlobalVariables.slot3_health -= attack
							$attack_3_charge.value = 0
						elif $attack_2_charge.value >= 100:
							attack = attack2
							GlobalVariables.slot3_health -= attack
							$attack_2_charge.value = 0
						else:
							attack = attack1
							GlobalVariables.slot3_health -= attack
						start_speed = true
						charge_enabled = true
						GlobalVariables.full = false
						
				if GlobalVariables.slot4_health > 0:
					if GlobalVariables.player_targeted == 4:
						if $attack_3_charge.value >= 100:
							attack = attack3
							GlobalVariables.slot4_health -= attack
							$attack_3_charge.value = 0
						elif $attack_2_charge.value >= 100:
							attack = attack2
							GlobalVariables.slot4_health -= attack
							$attack_2_charge.value = 0
						else:
							attack = attack1
							GlobalVariables.slot4_health -= attack
						start_speed = true
						charge_enabled = true
						GlobalVariables.full = false
						
				if GlobalVariables.slot5_health > 0:
					if GlobalVariables.player_targeted == 5:
						if $attack_3_charge.value >= 100:
							attack = attack3
							GlobalVariables.slot5_health -= attack
							$attack_3_charge.value = 0
						elif $attack_2_charge.value >= 100:
							attack = attack2
							GlobalVariables.slot5_health -= attack
							$attack_2_charge.value = 0
						else:
							attack = attack1
							GlobalVariables.slot5_health -= attack
						start_speed = true
						charge_enabled = true
						GlobalVariables.full = false

func _on_attack_1_pressed():
	if GlobalVariables.target == true:
		attack = attack1
		$attack_1.hide()
		$attack_2.hide()
		$attack_3.hide()
		$attack1.hide()
		$attack2.hide()
		$attack3.hide()
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
			$attack1.hide()
			$attack2.hide()
			$attack3.hide()
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
			$attack_2_charge.value = 0
			GlobalVariables.full = false


func _on_attack_3_pressed():
	if GlobalVariables.target == true:
		if $attack_3_charge.value >= 100:
			attack = attack3
			$attack_1.hide()
			$attack_2.hide()
			$attack_3.hide()
			$attack1.hide()
			$attack2.hide()
			$attack3.hide()
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

