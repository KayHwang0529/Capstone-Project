class_name Inv extends Resource

@export var items: Array[ItemEntity]

signal update 

func insert (item: ItemEntity):
	items[0] = item
	print(items)
	
func contains (item: ItemEntity):
	if items[0] == item:
		return true
	return false
