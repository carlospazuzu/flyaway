extends Obstacle



# Called when the node enters the scene tree for the first time.
func _ready():
	self.size = Vector2(130, 150)
	self.color = Color("#6D1A36")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	._process(delta)
	update()



