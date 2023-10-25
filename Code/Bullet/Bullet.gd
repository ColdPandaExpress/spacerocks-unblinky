extends Area2D
class_name Bullet

@onready var timer = $Timer

var speed: float = 600 # Px / sec.
var direction: Vector2

func _ready():
	timer.timeout.connect(OnTimedOut)


func OnTimedOut():
	queue_free()


#func _process(delta):
#	direction = Vector2
#	position += velocity * delta
