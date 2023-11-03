extends PanelContainer
class_name UI

const LIFE = preload("res://UI/assets/life.tscn")

@onready var score_ui = $VBox/ScoreUI
@onready var lives_list = $VBox/LivesList


var score: int = 0
var lives: int = 0


func _ready():
	UpdateLives(3)


func UpdateScore(delta_score):
	score += delta_score
	score_ui.text = str(score)


func UpdateLives(delta_lives):
	lives += delta_lives
	
	if lives >= 0:
		# Removing all children.
		for child in lives_list.get_children():
			lives_list.remove_child(child)
			child.queue_free()
		
		# Adding the lives back. 
		for i in lives:
			lives_list.add_child(LIFE.instantiate())
