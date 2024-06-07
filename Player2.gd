extends CharacterBody2D


func _process(delta):
	velocity.y = 0
	if Input.is_action_pressed("up2"):
		velocity.y = -300
		if position.y < 0:
			position.y = 0
	if Input.is_action_pressed("down2"):
		velocity.y = 300
		if position.y > 330:
			position.y = 330
	
	move_and_collide(velocity * delta)
