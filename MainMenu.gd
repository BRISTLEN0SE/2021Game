extends Node


func _on_level_select_pressed():
	get_tree().change_scene("res://test.tscn")
	pass # Replace with function body.


func _on_chara_select_pressed():
	get_tree().change_scene("res://character_selector.tscn")
	pass # Replace with function body.


func _on_unlock_pressed():
	get_tree().change_scene("res://Unlock.tscn")
	pass # Replace with function body.
