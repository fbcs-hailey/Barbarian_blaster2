extends Node3D
class_name Home

@export var max_health:=5


var health: int :
	set(new_health):
		health=new_health
		label_3d.text=str(health)+"/"+str(max_health)
		if new_health==0:
			get_tree().reload_current_scene()
@onready var label_3d: Label3D = $Label3D
func _ready() -> void:
	health=max_health
	label_3d.modulate=Color.DARK_RED

func take_damage()-> void:
	print("damage taken at home")
	health-=1
	
