extends Node
#hi
var crystal = [0,1,2,3,4,5,6]
var chosen = 0
var on = [0,1]
var random = 0

func _physics_process(delta):
	randomize()
	#show gold amount
	$gold.text = str(GlobalVariables.gold)
	#add gold shortcut
	if Input.is_action_pressed("ui_down"):
		GlobalVariables.gold += 1

#back to main menu
func _on_Back_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	



func _on_Buy_pressed():
	if GlobalVariables.gold >= 100:
		GlobalVariables.gold -= 100
		#randomise lists
		chosen = crystal[randi() % crystal.size()]
		random = on[randi() % on.size()]
		$crystalfinal.set_frame(chosen)
		#character shards when get certain crystals
		match chosen:
			0:
				GlobalVariables.char1_shard +=1
			1:
				GlobalVariables.char2_shard +=1
			2:
				GlobalVariables.char3_shard +=1
			3:
				if random == 0:
					GlobalVariables.char4_shard +=1
				elif random == 2:
					GlobalVariables.char5_shard +=1
			4:
				if random == 0:
					GlobalVariables.char6_shard +=1
				elif random == 2:
					GlobalVariables.char7_shard +=1
			5:
				if random == 0:
					GlobalVariables.char8_shard +=1
				elif random == 2:
					GlobalVariables.char9_shard +=1
			6:
				if random == 0:
					GlobalVariables.char10_shard +=1
				elif random == 2:
					GlobalVariables.char11_shard +=1
