extends Area2D

var jde_doprava = false


func _ready():
			$AnimatedSprite.play("Idle")



func _process(delta):
	if jde_doprava:
		if $"Světlo".position.x > 1.5:
			jde_doprava = false
		$"Světlo".position.x += .3
	else:
		if $"Světlo".position.x < .3:
			jde_doprava = true
		$"Světlo".position.x -= .3
