extends Node3D
class_name Home

@export var max_health:=5
@onready var label_3d: Label3D = $Label3D

var health: int :
	set(new_health):
		health=new_health
		label_3d.text=str(health)+"/"+str(max_health)

func _ready() -> void:
	health=max_health

func take_damage()-> void:
	print("damage taken at home")
	health-=1
	
