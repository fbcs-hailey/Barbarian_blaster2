extends Path3D

@export var enemy_scene:PackedScene
@export var difMan:Node
@onready var timer: Timer = $Timer
@export var vicLayer:CanvasLayer

func spawn_enemy():
	var cur_enemy=enemy_scene.instantiate()
	cur_enemy.max_health=difMan.get_enemy_health()
	add_child(cur_enemy)
	#cur_enemy.tree_exited.connect(enemy_defeated())
	timer.wait_time=difMan.get_spawn_time()

func enemy_defeated():
	if timer.is_stopped():
		for child in get_children():
			if child is Enemy:
				return
		vicLayer.visible=true

func _on_timer_timeout() -> void:
	spawn_enemy()

func _on_difficulty_manager_stop_spawning_enemies() -> void:
	timer.stop()
