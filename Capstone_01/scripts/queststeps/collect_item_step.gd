class_name CollectItemStep extends QuestStep

@export var item: ItemEntity
var collected = false
var inv: Inv = preload("res://playerInv.tres")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	meetsCondition()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func meetsCondition() -> bool:
	collected = inv.cotains(item)
	if collected:
		return true
	return false
