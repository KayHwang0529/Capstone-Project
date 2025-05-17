extends BaseScene

@onready var camera = $Camera2D
var my_home_quest: Quest = load("res://quests/get_ready.tres")

func _ready() -> void:
	super()
	camera.follow_node = player
	QuestSystem.mark_quest_as_available(my_home_quest)
	if QuestSystem.is_quest_available(my_home_quest):
		QuestSystem.start_quest(my_home_quest)
	

# Called when the node enters the scene tree for the first time.

			

	
