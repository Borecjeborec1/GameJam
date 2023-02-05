extends Node2D

var positions = [-112, -80, -48, -16, 16, 48, 80, 112]
var rostliny = ["Avokado","Bonsai","Kapradiny","Levandule","Mochyne","Orchidej","Zelenec","Zeleneczezhora"]
var rozsvicene = []


func _ready():
	randomize()
	rostliny.shuffle()
	print(rostliny)
	for i in len(rostliny):
		get_node(rostliny[i]).position.y = positions[i]


func rozsvit(rostlina):
	rozsvicene.append(rostlina)
	if rostliny.find(rostlina) == rozsvicene.find(rostlina):
		get_node(rostlina).modulate = "#00FF00"
		if len(rostliny) ==  len(rozsvicene):
			zobraz_klic()
	else:
		get_node(rostlina).modulate = "#FF0000"
	
	print(rozsvicene)

func zhasni(rostlina):
	rozsvicene.erase(rostlina)
	get_node(rostlina).modulate = "#fff"
	print(rozsvicene)
	
	
func zobraz_klic():
	$"../Klíč".visible = true
	$"../Klíč".position.y += 50
