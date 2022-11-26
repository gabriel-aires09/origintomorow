extends KinematicBody2D

var moveSpeed : int = 250
var interactDist : int = 70
var velocity = Vector2()
var dir = Vector2()

onready var rayCast = $RayCast2D
onready var anim = $AnimatedSprite

func _physics_process(delta):
	velocity = Vector2()
	
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		dir = Vector2(0, -1)
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
		dir = Vector2(0, 1)
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		dir = Vector2(-1, 0)
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		dir = Vector2(1, 0)
	
	velocity = velocity.normalized()
	
	move_and_slide(velocity * moveSpeed, Vector2.ZERO)
	manage_animations()
	
func manage_animations():
	if velocity.x > 0:
		play_animation("correr_direita")
	elif velocity.x < 0:
		play_animation("correr_esquerda")
	elif velocity.y < 0: 
		play_animation("parada_costa")
	elif velocity.y > 0: 
		play_animation("parada_frente")
	elif dir.x == 1:
		play_animation("parada_direita")
	elif dir.x == -1:
		play_animation("parada_esquerda")
	elif dir.y == -1:
		play_animation("parada_costa")
	elif dir.y == 1:
		play_animation("parada_frente")		

func play_animation (anim_name):
	if anim.animation != anim_name:
		anim.play(anim_name)
		
	

