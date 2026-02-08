extends Node2D
var minigame_scene = load("res://Scenes/minigame.tscn")
var instance
var can_start_game = false
var instance_count = 0


func _ready() -> void:
	$animation.play("idlefront")
	$InteractSprite.hide()
	
func _process(delta: float) -> void:
	if Input.is_action_just_released("interact"):
		if (can_start_game == true):
			start_minigame()

func _on_target_hit_area_entered(area: Area2D):
	if area.is_in_group("hitbox"):
		$InteractSprite.show()
		can_start_game = true

func _on_target_hit_area_exited(area: Area2D) -> void:
	if area.is_in_group("hitbox"):
		$InteractSprite.hide()
		can_start_game = false
		stop_minigame()

func start_minigame():
	if can_start_game == true:
		print("received signal")
		if (instance_count >= 1):
			stop_minigame()
		else:
			instance = minigame_scene.instantiate()
			add_child(instance)
			instance_count += 1
			print(instance_count)

func stop_minigame():
	if (instance_count >= 1):
		remove_child(instance)
		instance_count -= 1
		print(instance_count)
		instance.free()
	else:
		pass
