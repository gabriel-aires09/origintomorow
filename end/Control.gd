extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var a = Dialogic.start("Cena 1") # Replace with function body.
	add_child(a)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
