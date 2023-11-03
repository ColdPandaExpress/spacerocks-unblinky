extends ScreenWrapper
class_name Bullet

@onready var timer = $Timer

var ship: Ship
var speed: float = 600 # px / sec.
var direction: Vector2


func _ready():
	timer.timeout.connect(OnTimedOut)


func OnTimedOut():
	queue_free()


func _process(delta):
	super._process(delta)
	
	var direction = Vector2(cos(rotation), -sin(rotation))
	direction.y *= -1
	position += direction * speed * delta

