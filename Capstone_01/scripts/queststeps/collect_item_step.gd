class_name CollectItemStep extends QuestStep

@export var item: ItemEntity
var collected = false
var inv: Inv = preload("res://playerInv.tres")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("here")
	meetsCondition()

	
func meetsCondition() -> bool:
	collected = inv.contains(item)
	if collected:
		return true
	return false
