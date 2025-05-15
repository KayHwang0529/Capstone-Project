class_name Inv extends Resource

@export var items: Array[ItemEntity]

signal item_inserted(item)
signal update

func insert (item: ItemEntity):
	items[0] = item
	print(items)
	item_inserted.emit(item)
	
func contains (item: ItemEntity):
	if items[0] == item:
		return true
	return false
