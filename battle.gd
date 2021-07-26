extends Node


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_focus_prev"):
		get_tree().change_scene("res://character_selector.tscn")
		
	$health_bars/Player/slot1_health.value = GlobalVariables.slot1_health
	$health_bars/Player/slot2_health.value = GlobalVariables.slot2_health
	$health_bars/Player/slot3_health.value = GlobalVariables.slot3_health
	$health_bars/Player/slot4_health.value = GlobalVariables.slot4_health
	$health_bars/Player/slot5_health.value = GlobalVariables.slot5_health
	
	$health_bars/Enemy/slot1_health.value = GlobalVariables.enemy_slot1_health
	$health_bars/Enemy/slot2_health.value = GlobalVariables.enemy_slot2_health
	$health_bars/Enemy/slot3_health.value = GlobalVariables.enemy_slot3_health
	$health_bars/Enemy/slot4_health.value = GlobalVariables.enemy_slot4_health
	$health_bars/Enemy/slot5_health.value = GlobalVariables.enemy_slot5_health
	
	
	$speed_bars/Player/slot1_speed.value = GlobalVariables.slot1_speed
	$speed_bars/Player/slot2_speed.value = GlobalVariables.slot2_speed
	$speed_bars/Player/slot3_speed.value = GlobalVariables.slot3_speed
	$speed_bars/Player/slot4_speed.value = GlobalVariables.slot4_speed
	$speed_bars/Player/slot5_speed.value = GlobalVariables.slot5_speed
	
	$speed_bars/Enemy/slot1_speed.value = GlobalVariables.enemy_slot1_speed
	$speed_bars/Enemy/slot2_speed.value = GlobalVariables.enemy_slot2_speed
	$speed_bars/Enemy/slot3_speed.value = GlobalVariables.enemy_slot3_speed
	$speed_bars/Enemy/slot4_speed.value = GlobalVariables.enemy_slot4_speed
	$speed_bars/Enemy/slot5_speed.value = GlobalVariables.enemy_slot5_speed
	
	if $health_bars/Targeted/targeted_health.value < 1:
		$health_bars/Targeted/targeted_health.hide()
		$speed_bars/Targeted/targeted_speed.hide()
	else:
		$health_bars/Targeted/targeted_health.show()
		$speed_bars/Targeted/targeted_speed.show()
	
	if GlobalVariables.targeted == 6:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot1_health
		$speed_bars/Targeted/targeted_speed.value = GlobalVariables.enemy_slot1_speed
	if GlobalVariables.targeted == 7:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot2_health
		$speed_bars/Targeted/targeted_speed.value = GlobalVariables.enemy_slot2_speed
	if GlobalVariables.targeted == 8:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot3_health
		$speed_bars/Targeted/targeted_speed.value = GlobalVariables.enemy_slot3_speed
	if GlobalVariables.targeted == 9:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot4_health
		$speed_bars/Targeted/targeted_speed.value = GlobalVariables.enemy_slot4_speed
	if GlobalVariables.targeted == 10:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot5_health
		$speed_bars/Targeted/targeted_speed.value = GlobalVariables.enemy_slot5_speed
		
		
	if GlobalVariables.current == 1:
		$health_bars/Current/current_health.value = GlobalVariables.slot1_health
		$speed_bars/Current/current_speed.value = GlobalVariables.slot1_speed
	if GlobalVariables.current == 2:
		$health_bars/Current/current_health.value = GlobalVariables.slot2_health
		$speed_bars/Current/current_speed.value = GlobalVariables.slot2_speed
	if GlobalVariables.current == 3:
		$health_bars/Current/current_health.value = GlobalVariables.slot3_health
		$speed_bars/Current/current_speed.value = GlobalVariables.slot3_speed
	if GlobalVariables.current == 4:
		$health_bars/Current/current_health.value = GlobalVariables.slot4_health
		$speed_bars/Current/current_speed.value = GlobalVariables.slot4_speed
	if GlobalVariables.current == 5:
		$health_bars/Current/current_health.value = GlobalVariables.slot5_health
		$speed_bars/Current/current_speed.value = GlobalVariables.slot5_speed
	
	
	if GlobalVariables.slot1_health < 1:
		$health_bars/Player/slot1_health.hide()
		$speed_bars/Player/slot1_speed.hide()
	if GlobalVariables.slot2_health < 1:
		$health_bars/Player/slot2_health.hide()
		$speed_bars/Player/slot2_speed.hide()
	if GlobalVariables.slot3_health < 1:
		$health_bars/Player/slot3_health.hide()
		$speed_bars/Player/slot3_speed.hide()
	if GlobalVariables.slot4_health < 1:
		$health_bars/Player/slot4_health.hide()
		$speed_bars/Player/slot4_speed.hide()
	if GlobalVariables.slot5_health < 1:
		$health_bars/Player/slot5_health.hide()
		$speed_bars/Player/slot5_speed.hide()
	if GlobalVariables.enemy_slot1_health < 1:
		$health_bars/Enemy/slot1_health.hide()
		$speed_bars/Enemy/slot1_speed.hide()
	if GlobalVariables.enemy_slot2_health < 1:
		$health_bars/Enemy/slot2_health.hide()
		$speed_bars/Enemy/slot2_speed.hide()
	if GlobalVariables.enemy_slot3_health < 1:
		$health_bars/Enemy/slot3_health.hide()
		$speed_bars/Enemy/slot3_speed.hide()
	if GlobalVariables.enemy_slot4_health < 1:
		$health_bars/Enemy/slot4_health.hide()
		$speed_bars/Enemy/slot4_speed.hide()
	if GlobalVariables.enemy_slot5_health < 1:
		$health_bars/Enemy/slot5_health.hide()
		$speed_bars/Enemy/slot5_speed.hide()
	
	
