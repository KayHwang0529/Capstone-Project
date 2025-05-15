class_name CollectItemStep extends QuestStep

@export var item: ItemEntity
var collected = false
var inv: Inv = preload("res://playerInv.tres")


func ready() -> void:
	inv.item_inserted.connect(new_inv_item)
	is_collected()



func is_collected():
	collected = inv.contains(item)
	print(inv.items[0])
	if collected:
		emit_signal("updated")

func new_inv_item(new_item):
	if new_item == item:
		emit_signal("updated")

	
func meetsCondition() -> bool:
	return collected
