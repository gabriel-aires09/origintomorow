extends Node2D

func _ready():
	var dialogo = Dialogic.start("Conversa")
	add_child(dialogo)
