extends Node2D


onready var bullet_scene = load("res://Scenes/Bullet.tscn")

onready var player = get_parent().get_parent().get_node("Player")

var type = "ENEMY"

func _ready():
	$Timer.set_wait_time(2)
	$Timer.start()
	
	var target = Vector2(position.x, 100)
	$Move_Tween.interpolate_property(self, "position", position, target, 2, Tween.TRANS_QUINT, Tween.EASE_OUT)
	$Move_Tween.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(1 * delta)
	position.y += 50 * delta
	
	if (position.y > get_viewport_rect().size.y + 20):
		get_parent().remove_child(self)
		queue_free()
	
func spawn_bullets():
	var b1 = bullet_scene.instance()
	
	get_parent().add_child(b1)
	b1.bullet_speed = 800
	b1.position = self.position
	b1.dir = Vector2(player.position.x - self.position.x, player.position.y - self.position.y).normalized()
	


func timeout():
	spawn_bullets()
	
	
