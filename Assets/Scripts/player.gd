extends CharacterBody2D

@export var move_speed : float = 100

func _physics_process(_delta):
	# Get Input Direction
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"), 
	Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	# Update Velocity
	velocity = input_direction * move_speed
	
	# Move and Slide function uses velocity of character body to move character on map
	move_and_slide()
	#move_and_collide()

#animation
var left = false



func _ready() -> void:
	$animation.play("idlefront")

func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("right"):
		$animation.play("walkside")
		left = false
	
	if Input.is_action_just_released("right"):
		$animation.play("idleside")
	
	if velocity.x:
		$animation.flip_h = velocity.x < 0
	
	if Input.is_action_just_pressed("left"):
		$animation.play("walkside")
		
	if Input.is_action_just_released("left"):
		$animation.play("idleside")
		
	if Input.is_action_just_pressed("up"):
		$animation.play("walkback")
		
	if Input.is_action_just_released("up"):
		$animation.play("idleback")
		
	if Input.is_action_just_pressed("down"):
		$animation.play("walkfront")
		
	if Input.is_action_just_released("down"):
		$animation.play("idlefront")
