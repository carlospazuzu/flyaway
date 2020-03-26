extends Timer


var time_passed: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _proper_time_format(time):
	if time < 10:
		return "0" + str(time)
	else: 
		return str(time)

func get_formatted_time():
	var minutes = self.time_passed / 60
	var seconds = self.time_passed % 60
	
	return _proper_time_format(minutes) + ":" + _proper_time_format(seconds)
	

func get_time():
	return self.time_passed


func _on_GameTimer_timeout():
	self.time_passed += 1
	pass # Replace with function body.
