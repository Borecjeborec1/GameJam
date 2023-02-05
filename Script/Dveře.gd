extends Area2D


func _on_Dvee_body_entered(body):
	if body.name == "Player" and body.ma_klic:
		end_game()

func end_game():
	pass
