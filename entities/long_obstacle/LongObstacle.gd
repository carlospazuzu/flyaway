extends Obstacle


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.size = Vector2(130, 300)
	self.color = Color(1 / 255.0, 1 / 255.0, 1 / 255.0, 1 / 255.0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	._process(delta)
	update()
