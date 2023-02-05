extends Node2D

var positions = [112,80,48,16,-16,-48,-80,-112]

func _ready():
	randomize()
	positions.shuffle()
	$Avokado.position.y = positions[0]
	$Bonsai.position.y = positions[1]
	$Kapradiny.position.y = positions[2]
	$Levandule.position.y = positions[3]
	$Mochyne.position.y = positions[4]
	$Orchidej.position.y = positions[5]
	$Zelenec.position.y = positions[6]
	$Zeleneczezhora.position.y = positions[7]

