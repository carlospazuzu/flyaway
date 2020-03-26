extends Area2D


const size: Vector2 = Vector2(120, 120)

var current_position: int = 2

var possible_positions = [
							Vector2(100, 65),
							Vector2(100, 265),
							Vector2(100, 465)
						 ]

var normal_speed_sound = preload("res://resources/audio/flying-geo.wav")
var fast_speed_sound = preload("res://resources/audio/flying-geo-accelerating.wav")

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
		
	if Input.is_action_just_pressed("increase_speed"):
		$'/root/Globals'.current_speed = $'/root/Globals'.base_speed * 3
		$'/root/Main/TravelledDistance/Timer'.wait_time = 0.25
		$"/root/Main/FlyingSFX".stop()
		$"/root/Main/FlyingSFX".stream = fast_speed_sound
		$"/root/Main/FlyingSFX".play()		
		
	if Input.is_action_just_released("increase_speed"):
		$'/root/Globals'.current_speed = $'/root/Globals'.base_speed
		$'/root/Main/TravelledDistance/Timer'.wait_time = 1
		$"/root/Main/FlyingSFX".stop()
		$"/root/Main/FlyingSFX".stream = normal_speed_sound
		$"/root/Main/FlyingSFX".play()
	
	current_position = int(clamp(current_position, 0, 2))
	
	position = possible_positions[current_position]
	
	# update()
	
#	pass


func _draw():
	pass
	# draw_rect(Rect2($CollisionShape2D.position - (size / 2), size), Color("#F9DC5C"), true)



func set_player_position(x, y):
	$CollisionShape2D.position = Vector2(x, y)


func start_animation():
	$AnimatedSprite.animation = 'default'


func _on_Go_area_entered(area):
	$"/root/Globals".is_playing = false
	$"/root/Main/ObstacleGenerator".stop_timer()
	$"/root/Main/TravelledDistance".set_process(false)
	$"/root/Main/TravelledDistance".stop_timer()
	self.set_process(false)
	$"/root/Main/GameTimer".stop()
	
	$AnimatedSprite.animation = "stop"
	$"/root/Main/Background".stop_parallax()
	
	for obstacle in $"/root/Main/Obstacles".get_children():
		obstacle.set_process(false)
	$"/root/Main/FinalScore".visible = true
	pass # Replace with function body.
