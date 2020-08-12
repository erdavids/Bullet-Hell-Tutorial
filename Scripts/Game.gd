extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


func update_systems():
	get_node("UI/Health").value = Global.PLAYER_HEALTH
	
	
