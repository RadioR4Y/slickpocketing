extends Node2D

@export var speed = 1.5
var direction = randi_range(-1, 0)
var Zone:Vector2 = $Zone.Vector2()
var velocity:Vector2 = Vector2()


func _ready():
	Zone = position
	update_zone()
	
	$Player.position = Vector2(-1, randf_range(-18, 18))

func _process(delta):
	# WinZone movement while active
	velocity = position.direction_to(Zone) * speed

func update_zone():
	Zone.y = randi_range(-15.0, 15.0)
