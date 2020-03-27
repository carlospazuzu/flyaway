extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"UP AND DOWN".append_bbcode("[center]- PRESS UP AND DOWN TO DODGE THE OBSTACLES[/center]")
	$Z.append_bbcode("[center]- PRESS AND HOLD \"Z\" TO INCREASE SPEED[/center]")
	$"PRESS SPACE".append_bbcode("[center]PRESS SPACE TO CONTINUE[/center]")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scenes/main/Main.tscn")


func _draw():
	draw_rect(Rect2(Vector2(0, 0), Vector2(1024, 600)), Color("#161616"), true)
