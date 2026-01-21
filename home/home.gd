extends Node3D
class_name Home

@export var max_health:=5


var health: int :
	set(new_health):
		health=new_health
		label_3d.text=str(health)+"/"+str(max_health)
		var red:Color=Color.RED
		var white:Color=Color.WHITE
		label_3d.modulate=red.lerp(white,float(health)/float(max_health))
		
		if new_health==0:
			get_tree().reload_current_scene()
@onready var label_3d: Label3D = $Label3D

func _ready() -> void:
	health=max_health


func take_damage()-> void:
	print("damage taken at home")
	health-=1
	
