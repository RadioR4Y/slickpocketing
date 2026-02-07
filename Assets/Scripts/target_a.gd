extends Node2D


func _ready() -> void:
	$animation.play("idlefront")
	$InteractSprite.hide()

func _on_target_hit_area_entered(area: Area2D):
	if area.is_in_group("hitbox"):
		$InteractSprite.show()

func _on_target_hit_area_exited(area: Area2D):
	if area.is_in_group("hitbox"):
		$InteractSprite.hide()
