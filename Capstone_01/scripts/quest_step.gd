extends Resource
class_name QuestStep

@export_multiline var title: String
@export var completed: bool = false
@export var name: String

signal updated

## Virtual method, this has to be overriden
func meets_condition() -> bool:
	return completed
	
func get_queststep_name():
	return name

func ready() -> void:
	pass


func serialize() -> Dictionary:
	return {"completed": completed}


func deserialize(data: Dictionary) -> void:
	for key in data.keys():
		set(key, data[key])
