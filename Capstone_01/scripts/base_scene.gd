extends Node
class_name BaseScene

@onready var player: Player = $Player
@onready var entrance_markers: Node2D = $EntranceMarkers
@onready var anxiety_layer = $TileMapLayer
@onready var normal_layer = $TileMapLayer2

var my_quest: Quest = preload("res://quests/get_through_the_day.tres") 
var inv: Inv = preload("res://playerInv.tres")
var item = Headphones
var instance : ItemEntity

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if SceneManager.player:
		if player:
			player.queue_free()
		player = SceneManager.player
		add_child(player)
		position_player()
		QuestSystem.mark_quest_as_available(my_quest)
		if QuestSystem.is_quest_available(my_quest):
			QuestSystem.start_quest(my_quest)
		if my_quest.get_first_uncompleted_step().get_queststep_name() == "EquipHP":
			normal_layer.show()
			anxiety_layer.hide()
			
func _process(delta: float):
	play_dialogue()
			
func play_dialogue():
	instance = item.instantiate()
	if inv.contains(instance):
		DialogueManager.show_example_dialogue_balloon(load("res://dialogue/dialogue.dialogue"),"start_talk_to_dad")
	
func position_player() -> void:
	for entrance in entrance_markers.get_children():
		if entrance is Marker2D and entrance.name == "any":
			player.global_position = entrance.global_position
