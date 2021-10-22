extends Spatial


func ready():
	if GlobalVariables.unlock == true:
		GlobalVariables.unlock = false
