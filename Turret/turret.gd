extends Node3D

@export var projectile:PackedScene

func _on_timer_timeout() -> void:
	var new_projectile:=projectile.instantiate()
	add_child(new_projectile)
	new_projectile.global_position=global_position
