extends Node2D

var LEFT_WALL = 500
var RIGHT_WALL = 1420

var PLAYER_HEALTH = 6

var ENEMY_GOAL = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func set_enemy_goal(goal):
	ENEMY_GOAL = goal
	
func killed_enemy():
	ENEMY_GOAL -= 1
	#get_tree().get_root().get_node("Game").get_node("UI/Enemy_Count").text = str(ENEMY_GOAL)

