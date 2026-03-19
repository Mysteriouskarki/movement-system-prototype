extends CharacterBody2D
@onready var dash_bar = $CanvasLayer/DashBar
@onready var sprite = $Sprite2D
@export var speed = 200
@export var sprint_speed = 600
@export var dash_speed = 1000
@export var dash_time = 0.15
@export var dash_cooldown = 1.0

var dash_direction = Vector2.ZERO

var is_dashing = false
var dash_timer = 0.0
var cooldown_timer = 0.0


func _physics_process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down").normalized()

	# timers
	if cooldown_timer > 0:
		cooldown_timer -= _delta

	if is_dashing:
		dash_timer -= _delta
		if dash_timer <= 0:
			is_dashing = false
			sprite.modulate = Color(1,1,1)

	# start dash
	if Input.is_action_just_pressed("dash") and cooldown_timer <= 0 and direction != Vector2.ZERO:
		is_dashing = true
		dash_timer = dash_time
		cooldown_timer = dash_cooldown
		dash_direction = direction
		sprite.modulate = Color(0, 1, 1) # cyan flash

	# movement
	if is_dashing:
		velocity = dash_direction * dash_speed * 1.2
	else:
		var current_speed = speed
		if Input.is_action_pressed("sprint"):
			current_speed = sprint_speed

		velocity = direction * current_speed

	move_and_slide()
	dash_bar.max_value = dash_cooldown
	dash_bar.value = dash_cooldown - cooldown_timer
