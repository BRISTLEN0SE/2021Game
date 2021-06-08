extends Node


func _physics_process(delta):
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
	
	if GlobalVariables.targeted == 6:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot1_health
	if GlobalVariables.targeted == 7:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot2_health
	if GlobalVariables.targeted == 8:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot3_health
	if GlobalVariables.targeted == 9:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot4_health
	if GlobalVariables.targeted == 10:
		$health_bars/Targeted/targeted_health.value = GlobalVariables.enemy_slot5_health
		
		
	if GlobalVariables.current == 1:
		$health_bars/Current/current_health.value = GlobalVariables.slot1_health
	if GlobalVariables.current == 2:
		$health_bars/Current/current_health.value = GlobalVariables.slot2_health
	if GlobalVariables.current == 3:
		$health_bars/Current/current_health.value = GlobalVariables.slot3_health
	if GlobalVariables.current == 4:
		$health_bars/Current/current_health.value = GlobalVariables.slot4_health
	if GlobalVariables.current == 5:
		$health_bars/Current/current_health.value = GlobalVariables.slot5_health
	
	
	if GlobalVariables.slot1_health < 1:
		$health_bars/Player/slot1_health.hide()
	if GlobalVariables.slot2_health < 1:
		$health_bars/Player/slot2_health.hide()
	if GlobalVariables.slot3_health < 1:
		$health_bars/Player/slot3_health.hide()
	if GlobalVariables.slot4_health < 1:
		$health_bars/Player/slot4_health.hide()
	if GlobalVariables.slot5_health < 1:
		$health_bars/Player/slot5_health.hide()
	if GlobalVariables.enemy_slot1_health < 1:
		$health_bars/Enemy/slot1_health.hide()
	if GlobalVariables.enemy_slot2_health < 1:
		$health_bars/Enemy/slot2_health.hide()
	if GlobalVariables.enemy_slot3_health < 1:
		$health_bars/Enemy/slot3_health.hide()
	if GlobalVariables.enemy_slot4_health < 1:
		$health_bars/Enemy/slot4_health.hide()
	if GlobalVariables.enemy_slot5_health < 1:
		$health_bars/Enemy/slot5_health.hide()
	
	
