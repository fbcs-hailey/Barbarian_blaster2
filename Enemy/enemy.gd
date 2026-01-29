extends PathFollow3D
class_name Enemy

## The speed in m/s the enemy will move
@export_range(0,100) var speed:int=10
@onready var home : Home =get_tree().get_first_node_in_group('home')
@export var max_health:int=50
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@export var pay:int=25
@onready var bank:=get_tree().get_first_node_in_group("bank")

var health:int:
	set(new_health):
		if health>new_health:
			animation_player.play("TakeDamage")
		health=new_health
		if health<1:
			bank.gold+=pay
			queue_free()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health=max_health

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress+=delta*speed
	if progress_ratio> 0.99:
		home.take_damage()
		queue_free()
