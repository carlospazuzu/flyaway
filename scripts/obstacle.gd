extends Area2D


class_name Obstacle


var size: Vector2
var color: Color

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	position.x -= $"/root/Globals".current_speed * delta
	

func _draw():
	draw_rect(Rect2($CollisionShape2D.position - (size / 2), size), color, true)


func set_obstacle_position(x, y):
	$CollisionShape2D.position = Vector2(x, y)
