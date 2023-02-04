extends Area2D

var jde_doprava = false

var je_zapnuta = false

var counter:int
var death_timer:int

func _ready():
	randomize()


func _process(delta):
	if je_zapnuta:
		print(counter)
		counter+=1
		if jde_doprava:
			if $"Světlo".position.x > 1.5:
				jde_doprava = false
			$"Světlo".position.x += .3
		else:
			if $"Světlo".position.x < .3:
				jde_doprava = true
			$"Světlo".position.x -= .3
		if counter > death_timer:
			je_zapnuta = false
			$"Světlo".visible = false
			$Particles2D.visible = false
			$AnimatedSprite.playing = false




func _on_Svka_body_entered(body):
	if body.name == "Player" and not je_zapnuta:
		if body.sebrane_zapalky > 0:
			$AnimatedSprite.play("Idle")
			$"Světlo".visible = true
			$Particles2D.visible = true
			je_zapnuta = true
			death_timer = randi() % 5000 + 5000
			counter = 0
			body.sebrane_zapalky-=1

