extends Area2D
class_name Ship

const BULLET = preload("res://Bullet/Bullet.tscn")

var rotation_speed: float = 180 # Degrees / sec.


func _process(delta):
	if Input.is_action_pressed("turn_ccw"):
		print("CCW")
		rotation_degrees -= rotation_speed * delta
	if Input.is_action_pressed("turn_cw"):
		print("CW")
		rotation_degrees += rotation_speed * delta
	if Input.is_action_pressed("thrust"):
		print("Thrust")
	if Input.is_action_just_pressed("fire"):
		print("Fire")
		var bullet = BULLET.instantiate()
		bullet.position = position
		bullet.rotation = rotation
		get_parent().add_child(bullet)

