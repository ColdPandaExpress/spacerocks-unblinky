extends Node
class_name Main

const SHIP = preload("res://Ship/Ship.tscn")

@onready var rocks = $Rocks
@onready var bullets = $Bullets


func _ready():
	SpawnShip()


func SpawnShip():
	var ship = SHIP.instantiate()
	ship.main = self
	ship.position = get_viewport().size / 2
	add_child(ship)
