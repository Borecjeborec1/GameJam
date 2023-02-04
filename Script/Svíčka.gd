extends Area2D

var jde_doprava = false

var je_zapnuta = false


func _process(delta):
	if je_zapnuta:
		$AnimatedSprite.play("Idle")
		if jde_doprava:
			if $"Světlo".position.x > 1.5:
				jde_doprava = false
			$"Světlo".position.x += .3
		else:
			if $"Světlo".position.x < .3:
				jde_doprava = true
			$"Světlo".position.x -= .3




func _on_Svka_body_entered(body):
	if body.name == "Player":
		if body.sebrane_zapalky > 0:
			$"Světlo".visible = true
			$Particles2D.visible = true
			je_zapnuta = true
			body.sebrane_zapalky-=1

