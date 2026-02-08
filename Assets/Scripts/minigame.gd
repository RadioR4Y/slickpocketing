extends Node2D

func _ready():
	print("davis is a stupid little cocksucker")
	#syncie is gay for men (despite being a woman)
	$WinZone.position = Vector2(-1, randf_range(-15, 15))
	$Hand.position = Vector2(-1, randf_range(-18, 18))
	var test = get_parent().get_node("../TargetA")
	print(test)
