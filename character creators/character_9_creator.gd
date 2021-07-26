extends Node

onready var character1 = preload("res://characters/player_9.tscn") 
onready var character2 = preload("res://characters/player_9.tscn") 
onready var character3 = preload("res://characters/player_9.tscn") 
onready var character4 = preload("res://characters/player_9.tscn") 
onready var character5 = preload("res://characters/player_9.tscn") 
onready var enemy_character1 = preload("res://characters/player_9.tscn") 
onready var enemy_character2 = preload("res://characters/player_9.tscn") 
onready var enemy_character3 = preload("res://characters/player_9.tscn") 
onready var enemy_character4 = preload("res://characters/player_9.tscn") 
onready var enemy_character5 = preload("res://characters/player_9.tscn") 

var charnum = 9

var hide_show = 1

var slot_1_used = false
var slot_2_used = false
var slot_3_used = false
var slot_4_used = false
var slot_5_used = false

var enemy_slot_1_used = false
var enemy_slot_2_used = false
var enemy_slot_3_used = false
var enemy_slot_4_used = false
var enemy_slot_5_used = false



func _physics_process(delta):
	if charnum in GlobalVariables.player_char or charnum in GlobalVariables.enemy_char:
		if hide_show == 1:
			#player
			if GlobalVariables.slot1 == charnum:
				if GlobalVariables.slot_1_used == false:
					var new_chara1 = character1.instance()
					get_parent().add_child(new_chara1)
					GlobalVariables.slot_1_used = true
			if GlobalVariables.slot2 == charnum:
				if GlobalVariables.slot_2_used == false:
					var new_chara2 = character2.instance()
					get_parent().add_child(new_chara2)
					GlobalVariables.slot_2_used = true
			if GlobalVariables.slot3 == charnum:
				if GlobalVariables.slot_3_used == false:
					var new_chara3 = character3.instance()
					get_parent().add_child(new_chara3)
					GlobalVariables.slot_3_used = true
			if GlobalVariables.slot4 == charnum:
				if GlobalVariables.slot_4_used == false:
					var new_chara4 = character4.instance()
					get_parent().add_child(new_chara4)
					GlobalVariables.slot_4_used = true
			if GlobalVariables.slot5 == charnum:
				if GlobalVariables.slot_5_used == false:
					var new_chara5 = character1.instance()
					get_parent().add_child(new_chara5)
					GlobalVariables.slot_5_used = true

			#enemy
			if GlobalVariables.enemy_slot1 == charnum:
				if GlobalVariables.enemy_slot_1_used == false:
					var new_enemy_chara1 = enemy_character1.instance()
					get_parent().add_child(new_enemy_chara1)
					GlobalVariables.enemy_slot_1_used = true
			if GlobalVariables.enemy_slot2 == charnum:
				if GlobalVariables.enemy_slot_2_used == false:
					var new_enemy_chara2 = enemy_character2.instance()
					get_parent().add_child(new_enemy_chara2)
					GlobalVariables.enemy_slot_2_used = true
			if GlobalVariables.enemy_slot3 == charnum:
				if GlobalVariables.enemy_slot_3_used == false:
					var new_enemy_chara3 = enemy_character3.instance()
					get_parent().add_child(new_enemy_chara3)
					GlobalVariables.enemy_slot_3_used = true
			if GlobalVariables.enemy_slot4 == charnum:
				if GlobalVariables.enemy_slot_4_used == false:
					var new_enemy_chara4 = enemy_character4.instance()
					get_parent().add_child(new_enemy_chara4)
					GlobalVariables.enemy_slot_4_used = true
			if GlobalVariables.enemy_slot5 == charnum:
				if GlobalVariables.enemy_slot_5_used == false:
					var new_enemy_chara5 = enemy_character5.instance()
					get_parent().add_child(new_enemy_chara5)
					GlobalVariables.enemy_slot_5_used = true
