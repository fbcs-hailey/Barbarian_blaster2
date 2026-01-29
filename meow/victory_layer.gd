extends CanvasLayer

@onready var base:=get_tree().get_first_node_in_group('home')
@onready var bank:=get_tree().get_first_node_in_group('bank')
@onready var star_2: TextureRect = %Star2
@onready var star_3: TextureRect = %Star3
@onready var health: Label = %Health
@onready var money: Label = %Money

func _on_button_pressed() -> void:
	get_tree().reload_current_scene()

func _on_button_2_pressed() -> void:
	get_tree().quit()

func victory():
	visible=true
	if base.health==base.max_health:
		star_2.modulate=Color.WHITE
		health.visible=true
	if bank.gold>200:
		star_3.modulate=Color.WHITE
		money.visible=true
