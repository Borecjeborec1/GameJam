extends Node2D



func _input(ev):
	if Input.is_key_pressed(KEY_P):
			$"Pause".visible = true
			get_tree().paused = true
