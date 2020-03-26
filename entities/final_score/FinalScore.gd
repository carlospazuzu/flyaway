extends Node2D


# signal move_total_score
var current_amount_of_digits: int = 1
var past_amount_of_digits: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	$"DIST_POINTS".rect_position.x = $"DIST".rect_position.x + 280
	$"TIME_COUNT".rect_position.x = $"TIME".rect_position.x + 260
	$"SCORE_COUNT".rect_position.x = $"SCORE_COUNT".rect_position.x + 330
	
	# connect("move_total_score", self, "_on_digit_increase")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"DIST_POINTS".text = str($"/root/Main/TravelledDistance".get_travelled_distance()) + ' M'
	$"TIME_COUNT".text = $"/root/Main/GameTimer".get_formatted_time()
	var total_score = $"/root/Main/TravelledDistance".get_travelled_distance() * $"/root/Main/GameTimer".get_time()
	
	current_amount_of_digits = len(str(total_score))
	
	if current_amount_of_digits > past_amount_of_digits:
		past_amount_of_digits = current_amount_of_digits
		$"SCORE_COUNT".rect_position.x -= 20
		# emit_signal("move_total_score")
	
	$"SCORE_COUNT".text = str(total_score)
	
	if Input.is_action_just_pressed("ui_accept") and not $"/root/Globals".is_playing:
		$"/root/Globals".is_playing = true
		$"/root/Globals".current_speed = 200.0
		$"/root/Globals".base_speed = 200.0
		
		$"/root/Main/TravelledDistance".travelled_distance = 0
		$"/root/Main/TravelledDistance".speed_travelled_distance = 0
		
		Input.action_release("increase_speed")
		
		$"/root/Main/Go".start_animation()
		$"/root/Main/Background".start_parallax()
		
		$'/root/Globals'.current_speed = $'/root/Globals'.base_speed
		$'/root/Main/TravelledDistance/Timer'.wait_time = 1
		$"/root/Main/Go".current_position = 2
		
		$"/root/Main/ObstacleGenerator".start_timer()
		$"/root/Main/TravelledDistance".set_process(true)
		$"/root/Main/TravelledDistance".start_timer()
		$"/root/Main/Go".position = Vector2(100, 465)
		$"/root/Main/Go".set_process(true)
		$"/root/Main/GameTimer".time_passed = 0
		$"/root/Main/GameTimer".start()	
		
		for obstacle in $"/root/Main/Obstacles".get_children():
			obstacle.queue_free()
		
		$"/root/Main/FinalScore".visible = false
	


func _draw():
	draw_rect(Rect2(Vector2(0, 0), Vector2(1024, 600)), Color(30 / 255.0, 30 / 255.0, 30 / 255.0, 128 / 255.0), true)
	
	draw_rect(Rect2(Vector2((1024 - 420) / 2, (600 - 270) / 2), Vector2(420, 270)), Color(30 / 255.0, 30 / 255.0, 30 / 255.0, 179 / 255.0), true)
