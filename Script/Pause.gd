extends VBoxContainer


#func _ready():
#	pause_mode = Node.PAUSE_MODE_PROCESS
	

func _on_resume_button_pressed():
	get_tree().paused = false
	visible = false


func _on_quit_button_pressed():
	get_tree().quit()
