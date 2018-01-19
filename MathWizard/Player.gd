extends KinematicBody2D

func _ready():
	pass
	
var velocity = Vector2()

func _physics_process(delta):
	
	if(Input.is_action_just_pressed("ui_left")):
		if(velocity.x >= 0):
			velocity.x = -50
		else:
			velocity.x = 0
		velocity.y = 0
	elif(Input.is_action_just_pressed("ui_right")):
		if(velocity.x <= 0):
			velocity.x = 50
		else:
			velocity.x = 0
	elif(Input.is_action_just_pressed("ui_up")):
		if(velocity.y >= 0):
			velocity.y = -50
		else:
			velocity.y = 0
		velocity.x = 0
	elif(Input.is_action_just_pressed("ui_down")):
		if(velocity.y <= 0):
			velocity.y = 50
		else:
			velocity.y = 0
		velocity.x = 0
	
	var d = move_and_collide(velocity*2*delta)
	
	if(d):
		if(d.collider):
			move_and_slide(d.remainder/delta)
	