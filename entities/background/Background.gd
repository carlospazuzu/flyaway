extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _draw():
	# draws sky
	draw_rect(Rect2(Vector2(0, 0), Vector2(1024, 600)), Color("#3185FC"), true)
	# draws ground
	draw_rect(Rect2(Vector2(0, 550), Vector2(1024, 50)), Color("#6D1A36"), true)
