extends Node2D


var travelled_distance: int = 0
var speed_travelled_distance: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$TravelledDistanceText.text = str(self.travelled_distance) + ' m'
#	pass


func _on_Timer_timeout():
	self.travelled_distance += 10
	self.speed_travelled_distance += 10
	if self.speed_travelled_distance >= 100:
		self.speed_travelled_distance = 0
		$"/root/Globals".base_speed += 50
	pass # Replace with function body.
