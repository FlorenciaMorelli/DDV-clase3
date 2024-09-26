extends CharacterBody2D

var inventory = []
var animation: AnimationPlayer

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

#	Controles de física
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		animation.play("running")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animation.stop()

#	El objeto se va moviendo
	move_and_slide()


func addToInventory(item) :
	inventory.append(item)
	print("You picked ", item, ". Inventory: ", inventory)
	

func _ready() -> void:
	animation = $AnimationPlayer
