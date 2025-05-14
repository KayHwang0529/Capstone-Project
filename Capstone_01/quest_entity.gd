@tool
class_name QuestEntity extends PandoraEntity

func get_quest() -> quest_resource:
	return get_resource("quest_resource")
