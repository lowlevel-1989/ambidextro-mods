extends "res://scenes/trampoline/trampoline.gd"


func _on_area_2d_body_entered(body: Node2D) -> void :
	if body.is_in_group("player_chara"):
		_chara = body
		if _tween:
			_tween.stop()
		_tween = create_tween()
		if Engine.get_frames_per_second() < 60:
			_tween.set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
		_tween.tween_property(top, "position", Vector2(0, -2), 0.02)
		_tween.finished.connect(jump.bind(body), Object.CONNECT_ONE_SHOT)

		_playing_ticks = true
		_play_tick()
