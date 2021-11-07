extends Node
#hi
var unlock = 0

func _physics_process(delta):
	$gold.text = str(GlobalVariables.gold)
	if Input.is_action_pressed("ui_down"):
		GlobalVariables.gold += 1
	if unlock > 5:
		unlock = 1
	print(unlock)

func _on_Back_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	



func _on_Buy_pressed():
	if GlobalVariables.gold >= 100:
		GlobalVariables.gold -= 100
		unlock += 1
		$crystal1.set_frame(unlock)
		$crystal2.set_frame(unlock + 1)
		$crystal3.set_frame(unlock + 2)

		
