extends Area2D


var size: Vector2 = Vector2(130, 150)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update()
	position.x -= $"/root/Globals".current_speed * delta


func _draw():
	draw_rect(Rect2($CollisionShape2D.position - (size / 2), size), Color("#6D1A36"), true)


func set_obstacle_position(x, y):
	$CollisionShape2D.position = Vector2(x, y)


