extends Node

var chara_chosen = 0

func _physics_process(delta):
	$team/team1.set_frame(GlobalVariables.slot1 - 1)
	$team/team2.set_frame(GlobalVariables.slot2 - 1)
	$team/team3.set_frame(GlobalVariables.slot3 - 1)
	$team/team4.set_frame(GlobalVariables.slot4 - 1)
	$team/team5.set_frame(GlobalVariables.slot5 - 1)
	


func _on_character1_pressed():
	chara_chosen = 1
func _on_character2_pressed():
	chara_chosen = 2
func _on_character3_pressed():
	chara_chosen = 3
func _on_character4_pressed():
	chara_chosen = 4
func _on_character5_pressed():
	chara_chosen = 5
func _on_character6_pressed():
	chara_chosen = 6
func _on_character7_pressed():
	chara_chosen = 7
func _on_character8_pressed():
	chara_chosen = 8
func _on_character9_pressed():
	chara_chosen = 9
func _on_character10_pressed():
	chara_chosen = 10
func _on_character11_pressed():
	chara_chosen = 11


func _on_team_1_pressed():
	GlobalVariables.slot1 = chara_chosen

func _on_team_2_pressed():
	GlobalVariables.slot2 = chara_chosen

func _on_team_3_pressed():
	GlobalVariables.slot3 = chara_chosen

func _on_team_4_pressed():
	GlobalVariables.slot4 = chara_chosen
	
func _on_team_5_pressed():
	GlobalVariables.slot5 = chara_chosen


func _on_Back_pressed():
	GlobalVariables.slot_1_used = false
	GlobalVariables.slot_2_used = false
	GlobalVariables.slot_3_used = false
	GlobalVariables.slot_4_used = false
	GlobalVariables.slot_5_used = false
	GlobalVariables.enemy_slot_1_used = false
	GlobalVariables.enemy_slot_2_used = false
	GlobalVariables.enemy_slot_3_used = false
	GlobalVariables.enemy_slot_4_used = false
	GlobalVariables.enemy_slot_5_used = false
	get_tree().change_scene("res://MainMenu.tscn")
