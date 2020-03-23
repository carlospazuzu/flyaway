extends Node2D


var small_obstacle = preload('res://entities/small_obstacle/SmallObstacle.tscn')
var long_obstacle = preload('res://entities/long_obstacle/LongObstacle.tscn')
var bird = preload('res://entities/bird/Bird.tscn')

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$Timer.wait_time = randi() % 2 + 1
	var obstacle_selector = randi() % 6
	$"/root/Globals/".current_speed += 20
	
	if obstacle_selector == 0:
		var o = null
		o = small_obstacle.instance()
		o.position = Vector2(1200, 479)
		$"/root/Main/Obstacles".add_child(o)
	elif obstacle_selector == 1:
		var o = null
		o = long_obstacle.instance()
		o.position = Vector2(1200, 429)
		$"/root/Main/Obstacles".add_child(o)
	elif obstacle_selector == 2:
		var b = bird.instance()
		b.position = Vector2(1200, 80)
		$"/root/Main/Obstacles".add_child(b)
		var o = null
		o = small_obstacle.instance()
		o.position = Vector2(1200, 479)
		$"/root/Main/Obstacles".add_child(o)
	elif obstacle_selector == 3:
		var b = bird.instance()
		b.position = Vector2(1200, 80)
		$"/root/Main/Obstacles".add_child(b)
		var b2 = bird.instance()
		b2.position = Vector2(1200, 230)
		$"/root/Main/Obstacles".add_child(b2)
	elif obstacle_selector == 4:
		var b2 = bird.instance()
		b2.position = Vector2(1200, 230)
		$"/root/Main/Obstacles".add_child(b2)
	elif obstacle_selector == 5:
		var b = bird.instance()
		b.position = Vector2(1200, 80)
		$"/root/Main/Obstacles".add_child(b)
	
	pass # Replace with function body.
