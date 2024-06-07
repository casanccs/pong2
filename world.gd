extends Node2D

var bscene = load("res://character_body_2d.tscn")

func _on_timer_timeout():
	var b = bscene.instantiate()
	b.position = Vector2(400,200)
	add_child(b)

