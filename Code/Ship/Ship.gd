extends ScreenWrapper
class_name Ship

const BULLET = preload("res://Bullet/Bullet.tscn")

var thrust_power: float = 10.0 #??
var rotation_speed: float = 180 # ° / sec.
var velocity: Vector2 # px / sec.


func _process(delta):
	super._process(delta)
	
	if Input.is_action_pressed("turn_ccw"):
		print("CCW")
		rotation_degrees -= rotation_speed * delta
	if Input.is_action_pressed("turn_cw"):
		print("CW")
		rotation_degrees += rotation_speed * delta
	
	# Thrust.
	if Input.is_action_pressed("thrust"):
		print("Thrust")
		var direction = Vector2(cos(rotation), -sin(rotation))
		direction.y *= -1
		velocity += direction * thrust_power
	
	# Fire.
	if Input.is_action_just_pressed("fire"):
		print("Fire")
		var bullet = BULLET.instantiate()
		bullet.position = position
		bullet.rotation = rotation
		get_parent().add_child(bullet)
	
	position += velocity * delta
