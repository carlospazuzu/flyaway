extends Area2D


const size: Vector2 = Vector2(120, 120)

var current_position: int = 2

var possible_positions = [
							Vector2(100, 65),
							Vector2(100, 265),
							Vector2(100, 465)
						 ]

# Called when the node enters the scene tree for the first time.
func _ready():
	position = possible_positions[current_position]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("ui_up"):
		current_position -= 1
	if Input.is_action_just_pressed("ui_down"):
		current_position += 1
		
	current_position = int(clamp(current_position, 0, 2))
	
	position = possible_positions[current_position]
	
	# update()
	
#	pass


func _draw():
	draw_rect(Rect2($CollisionShape2D.position - (size / 2), size), Color("#F9DC5C"), true)



func set_player_position(x, y):
	$CollisionShape2D.position = Vector2(x, y)



func _on_Go_area_entered(area):
	print('PEI')
	pass # Replace with function body.
