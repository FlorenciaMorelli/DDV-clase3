extends Node2D

#	var -> variables
#	export permite ver la variable en el inspector del nodo
@export var basePosition = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if basePosition != Vector2(0, 0) :
		$Trigger.position = basePosition


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
