class_name CollectItemStep extends QuestStep

@export var item: ItemEntity
var collected = false
var inv: Inv = preload("res://playerInv.tres")


func ready() -> void:
	is_collected()

func is_collected():
	collected = inv.contains(item)
	print(inv.items[0])
	if collected:
		emit_signal("updated")

	
func meetsCondition() -> bool:
	return collected
