extends Node

var hide_show = 1
var health = 100

var speed = 0
var max_speed = 500
var base_speed = 100
var start_speed = true
var tie = true

var charge_enabled = true

var star = 1
var level = 1

var charname = "spiderman"
var charnum = 1



func _physics_process(delta):
	if charnum in GlobalVariables.player_char or charnum in GlobalVariables.enemy_char:
		if hide_show == 1:
			#player
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
			#enemy
			if GlobalVariables.enemy_slot1 == charnum:
				$enemy/enemy_slot1.show()
			if GlobalVariables.enemy_slot2 == charnum:
				$enemy/enemy_slot2.show()
			if GlobalVariables.enemy_slot3 == charnum:
				$enemy/enemy_slot3.show()
			if GlobalVariables.enemy_slot4 == charnum:
				$enemy/enemy_slot4.show()
			if GlobalVariables.enemy_slot5 == charnum:
				$enemy/enemy_slot5.show()
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

	#timer
		if start_speed == true:
			speed = base_speed
			start_speed = false
			
		if GlobalVariables.full != true:
			speed += 1
			if GlobalVariables.targeted != charnum:
				$other/targeted_character.hide()
		if speed > max_speed:
			GlobalVariables.full = true
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

func _on_attack_1_pressed():
	$attack_1.hide()
	$attack_2.hide()
	$attack_3.hide()
	$attack_2_charge.hide()
	$attack_3_charge.hide()
	$other/current_character.hide()
	start_speed = true
	charge_enabled = true
	GlobalVariables.full = false

func _on_attack_2_pressed():
	if $attack_2_charge.value >= 100:
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
	if $attack_3_charge.value >= 100:
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
	GlobalVariables.targeted = charnum
	$other/targeted_character.show()

func _on_enemy_slot2_pressed():
	GlobalVariables.targeted = charnum
	$other/targeted_character.show()

func _on_enemy_slot3_pressed():
	GlobalVariables.targeted = charnum
	$other/targeted_character.show()

func _on_enemy_slot4_pressed():
	GlobalVariables.targeted = charnum
	$other/targeted_character.show()

func _on_enemy_slot5_pressed():
	GlobalVariables.targeted = charnum
	$other/targeted_character.show()

