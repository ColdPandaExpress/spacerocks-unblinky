extends PanelContainer
class_name UI

@onready var score_ui = $VBox/ScoreUI
@onready var lives_list = $VBox/LivesList
@onready var life = $VBox/LivesList/Life


var score: int = 0
var lives: int = 3


func _ready():
	UpdateLives(lives - 1)

func UpdateScore(delta_score):
	score += delta_score
	score_ui.text = str(score)


func UpdateLives(delta_lives):
	for i in abs(delta_lives):
		var dup = life.duplicate()
		lives_list.add_child(dup)
		
	lives += delta_lives
	print("LIVES: ", lives)
