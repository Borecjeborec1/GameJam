extends Control

func _ready() -> void:
	$VBoxContainer/start_button.grab_focus()


func _on_start_button_pressed() -> void:
	get_tree().change_scene("res://Scenes/MainScene.tscn")





func _on_quit_button_pressed() -> void:
	get_tree().quit()
