extends Node
#hi

func _physics_process(delta):
	$gold.text = str(GlobalVariables.gold)
	if Input.is_action_pressed("ui_down"):
		GlobalVariables.gold += 1

func _on_Back_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	



func _on_Buy_pressed():
	if GlobalVariables.gold >= 100:
		GlobalVariables.unlock = true
		GlobalVariables.gold -= 100
