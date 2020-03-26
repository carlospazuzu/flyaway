extends Node2D


var just_crashed: bool = false
var frame_count: int = 500
var shake: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if just_crashed:
		if shake:
			$"/root/Main".position.x += randi() % 8 - 4
			$"/root/Main".position.y += randi() % 8 - 4
			frame_count -= delta * 1000
			if frame_count <= 0:
				just_crashed = false
				frame_count = 500
				$"/root/Main".position = Vector2()
		else:
			$"/root/Main".position = Vector2()
			
		shake = not shake
#	pass
