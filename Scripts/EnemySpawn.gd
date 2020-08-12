extends Node2D

onready var enemy_scene = [load("res://Scenes/Enemies/Straight-Shot-Enemy.tscn")
]



# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.set_wait_time(2)
	$Timer.start()
	


func _on_Timer_timeout():
	var enemy = enemy_scene[0].instance()
	randomize()
	enemy.position.x = rand_range(50, 910)
	enemy.position.y = -50
	add_child(enemy)
	
