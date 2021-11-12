extends Node

var gold = 10000
#slot
var slot1 = 1
var slot2 = 2
var slot3 = 3
var slot4 = 4
var slot5 = 5

var enemy_slot1 = 6
var enemy_slot2 = 7
var enemy_slot3 = 8
var enemy_slot4 = 9
var enemy_slot5 = 10

var char1_shard = 0
var char2_shard = 0
var char3_shard = 0
var char4_shard = 0
var char5_shard = 0
var char6_shard = 0
var char7_shard = 0
var char8_shard = 0
var char9_shard = 0
var char10_shard = 0
var char11_shard = 0

var character1_created = false
var character2_created = false
var character3_created = false
var character4_created = false
var character5_created = false
var character6_created = false
var character7_created = false
var character8_created = false
var character9_created = false
var character10_created = false

#slot attack
var slot1_attack = 1
var slot2_attack  = 2
var slot3_attack  = 3
var slot4_attack  = 4
var slot5_attack  = 5

var enemy_slot1_attack  = 1
var enemy_slot2_attack  = 2
var enemy_slot3_attack  = 3
var enemy_slot4_attack  = 4
var enemy_slot5_attack  = 5

var chara1_health = 100
var chara2_health = 100
var chara3_health = 100
var chara4_health = 100
var chara5_health = 100
var chara6_health = 100
var chara7_health = 100
var chara8_health = 100
var chara9_health = 100
var chara10_health = 100
var chara11_health = 100


#slot health
var slot1_health = 100
var slot2_health = 100
var slot3_health = 100
var slot4_health = 100
var slot5_health = 100

var enemy_slot1_health = 100
var enemy_slot2_health = 100
var enemy_slot3_health = 100
var enemy_slot4_health = 100
var enemy_slot5_health = 100

var slot1_speed = 1
var slot2_speed = 1
var slot3_speed = 1
var slot4_speed = 1
var slot5_speed = 1

var enemy_slot1_speed = 1
var enemy_slot2_speed = 1
var enemy_slot3_speed = 1
var enemy_slot4_speed = 1
var enemy_slot5_speed = 1

var slot_1_used = false
var slot_2_used = false
var slot_3_used = false
var slot_4_used = false
var slot_5_used = false

var enemy_slot_1_used = false
var enemy_slot_2_used = false
var enemy_slot_3_used = false
var enemy_slot_4_used = false
var enemy_slot_5_used = false

var changed1 = false
var changed2 = false
var changed3 = false
var changed4 = false
var changed5 = false
var changed6 = false
var changed7 = false
var changed8 = false
var changed9 = false
var changed10 = false
var changed11 = false


var targeted = 1
var current = 0
var player_targeted = 0
var target = false

var death_count = 0

var player_char = [slot1,slot2,slot3,slot4,slot5]
var enemy_char = [enemy_slot1,enemy_slot2,enemy_slot3,enemy_slot4,enemy_slot5]
#turns
var full = false

