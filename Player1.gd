extends CharacterBody2D

#EMOTIONAL DAMAGE

func _process(delta):
	velocity.y = 0
	if Input.is_action_pressed("up1"):
		velocity.y = -300
		if position.y < 0:
			position.y = 0
	if Input.is_action_pressed("down1"):
		velocity.y = 300
		if position.y > 330:
			position.y = 330
	
	move_and_collide(velocity * delta)
