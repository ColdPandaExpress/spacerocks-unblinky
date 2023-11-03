extends Area2D
class_name ScreenWrapper

var ui_buffer: int = 62


func _process(_delta):
	
	# Wrapping.
	if position.x < 0:
		position.x = get_viewport().size.x
	if position.x > get_viewport().size.x:
		position.x = 0
	if position.y < ui_buffer:
		position.y = get_viewport().size.y
	if position.y > get_viewport().size.y:
		position.y = ui_buffer
