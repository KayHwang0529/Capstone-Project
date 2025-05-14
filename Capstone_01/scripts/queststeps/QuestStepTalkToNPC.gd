class_name TalkStep extends QuestStep

@export var npc_dialogue_resource: DialogueResource

var talked := false

func _on_dialogue_finished(resource: DialogueResource) -> void:
	if resource == npc_dialogue_resource:
		talked = true
		emit_signal("updated") # This tells the QuestSystem to re-check this step
		print("Dialogue finished for step:", resource.resource_path)
func meets_condition() -> bool:
	return talked
