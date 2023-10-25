extends Area2D
class_name Rock

var speed: float = randf_range(70, 350)
var direction: Vector2 = Vector2(randf_range(-1, 1), randf_range(-1, 1))
#var direction: Vector2 = Vector2(1, 0)

func _process(delta):
	position += direction * speed * delta
	
	if position.x < 0:
		position.x = get_viewport().size.x
	if position.x > get_viewport().size.x:
		position.x = 0
	if position.y < 0:
		position.y = get_viewport().size.y
	if position.y > get_viewport().size.y:
		position.y = 0
