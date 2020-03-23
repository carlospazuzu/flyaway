extends Obstacle


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.size = Vector2(130, 130)
	self.color = Color("#78FF33")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	._process(delta)
	update()
#	pass
