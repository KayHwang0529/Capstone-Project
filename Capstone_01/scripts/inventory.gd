class_name Inv extends Resource

@export var items: Array[ItemEntity]

signal update 

func insert (item: ItemEntity):
	for i in items:
		if i.is_empty():
			i = item
	
