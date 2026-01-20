extends PathFollow3D

## The speed in m/s the enemy will move
@export_range(0,100) var speed:int=10
@onready var home : Home =get_tree().get_first_node_in_group('home')

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress+=delta*speed
	if progress_ratio==1.0:
		home.take_damage()
		#queue_free()
