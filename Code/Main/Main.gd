extends Node
class_name Main

const SHIP = preload("res://Ship/Ship.tscn")
const UI_SCENE = preload("res://UI/UI.tscn")

@onready var rocks = $Rocks
@onready var bullets = $Bullets
@onready var ships = $Ships
@onready var ship_list = $MainData/ShipList
@onready var main_menu = $MainMenu
@onready var message = $MainMenu/VBox/Message
@onready var play_button = $MainMenu/VBox/PlayButton
@onready var quit_button = $MainMenu/VBox/QuitButton


func _ready():
	main_menu.show()
	play_button.pressed.connect(OnPlayPressed)
	quit_button.pressed.connect(OnQuitPressed)
#	get_tree().reload_current_scene()


func _process(delta):
	if ships.get_child_count() <= 0:
		# Game Over.
		main_menu.show() 


func OnPlayPressed():
	main_menu.hide()
	SpawnShip()


func OnQuitPressed():
	get_tree().quit()


func SpawnShip():
	var ui = UI_SCENE.instantiate()
	ship_list.add_child(ui)
	
	var ship = SHIP.instantiate()
	ship.main = self
	ship.ui = ui
	ship.position = get_viewport().size / 2
	ships.add_child(ship)
