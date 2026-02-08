extends Node2D

func _ready():
	$WinZone.position = Vector2(-1, randf_range(-15, 15))
	$Hand.position = Vector2(-1, randf_range(-18, 18))
