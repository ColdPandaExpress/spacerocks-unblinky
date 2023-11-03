extends Node
class_name Main

const SHIP = preload("res://Ship/Ship.tscn")
const UI_SCENE = preload("res://UI/UI.tscn")


@onready var rocks = $Rocks
@onready var bullets = $Bullets
@onready var ships = $Ships
@onready var ship_list = $MainData/ShipList


func _ready():
	SpawnShip()


func SpawnShip():
	var ui = UI_SCENE.instantiate()
	ship_list.add_child(ui)
	
	var ship = SHIP.instantiate()
	ship.main = self
	ship.ui = ui
	ship.position = get_viewport().size / 2
	ships.add_child(ship)
	
	
	
