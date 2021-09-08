extends Node


func _physics_process(delta):
	if GlobalVariables.gold > 100:
		pass

func _on_Back_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	
