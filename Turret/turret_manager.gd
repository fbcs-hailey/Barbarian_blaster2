extends Node3D
class_name TurretManager

@export var enemy_path:Path3D

@export var turret:PackedScene

func build_turret(place:Vector3)->void:
	var new_turret:=turret.instantiate()
	add_child(new_turret)
	new_turret.global_position = place
	new_turret.enemy_path=enemy_path
