extends Path3D

@export var enemy_scene:PackedScene
@export var difMan:Node
@onready var timer: Timer = $Timer

func spawn_enemy():
	var cur_enemy=enemy_scene.instantiate()
	cur_enemy.max_health=difMan.get_enemy_health()
	add_child(cur_enemy)
	timer.wait_time=difMan.get_spawn_time()

func _on_timer_timeout() -> void:
	spawn_enemy()
