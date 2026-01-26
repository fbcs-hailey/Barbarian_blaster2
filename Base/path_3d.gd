extends Path3D

@export var enemy_scene:PackedScene

func spawn_enemy():
	var cur_enemy=enemy_scene.instantiate()
	add_child(cur_enemy)

func _on_timer_timeout() -> void:
	spawn_enemy()
