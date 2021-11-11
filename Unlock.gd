extends Node
#hi
var crystal = [0,1,2,3,4,5,6]
var chosen = 0

func _physics_process(delta):
	randomize()
	$gold.text = str(GlobalVariables.gold)
	if Input.is_action_pressed("ui_down"):
		GlobalVariables.gold += 1


func _on_Back_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	



func _on_Buy_pressed():
	if GlobalVariables.gold >= 100:
		GlobalVariables.gold -= 100
		chosen = crystal[randi() % crystal.size()]
		$crystalfinal.set_frame(chosen)
		print(chosen)
