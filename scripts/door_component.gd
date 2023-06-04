extends Area2D
class_name DoorComponent

var _player_ref: Player = null

@export_category("Variables")
@export var _teleport_position: Vector2

@export_category("Objects")
@export var _animation: AnimationPlayer = null

func _on_body_entered(_body) -> void:
	if _body is Player:
		_player_ref = _body
		_animation.play("open")


func _on_animation_animation_finished(_anim_name: String) -> void:
	if _anim_name == "open":
		_animation.play("close")
		_player_ref.global_position = _teleport_position
