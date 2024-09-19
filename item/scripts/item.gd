extends Sprite2D

@export var item = "Coin"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_coin_area_body_entered(body: Node2D) -> void:
	#	Si hace contacto con un CharacterBody2D
	if body is CharacterBody2D :
		#	Aplica la función addToInventory del body
		body.addToInventory(item)
		#	Y eliminamos el item de la escena (Level 1)
		queue_free()
