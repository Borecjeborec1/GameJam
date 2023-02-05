extends Area2D


func _on_Kl_body_entered(body):
	if body.name == "Player":
		body.ma_klic = true
		queue_free()
