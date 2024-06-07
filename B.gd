extends CharacterBody2D

#F = ****

func _ready():
	velocity.x = randf() * 500
	velocity.y = randf() * 500
	
func _process(delta):
	if position.y < 0 or position.y > 400:
		velocity.y = -velocity.y
	var col = move_and_collide(velocity * delta)
	if col:
		velocity.x = -velocity.x
