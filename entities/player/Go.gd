extends Node2D

const CLOUD_SIZE: Vector2 = Vector2(150, 50)

const CLOUD_COLOR: String = "#FDF7CA"
const CLOUD_BORDER_COLOR: String = "#846A03"

const ZERO: Vector2 = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _draw():
	# draw_rect(Rect2(ZERO, CLOUD_SIZE), Color(CLOUD_BORDER_COLOR), false, 4.0, false)
	draw_rect(Rect2(ZERO, CLOUD_SIZE), Color(CLOUD_COLOR), true, 1.0, false)
	
