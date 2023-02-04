extends Area2D

func _on_Zpalka_body_entered(body):
	if body.name == "Player":
		body.sebrane_zapalky += 1
		queue_free()
	print(body.sebrane_zapalky)
	pass # Replace with function body.
