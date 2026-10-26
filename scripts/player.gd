extends Area2D

signal interact

@export var speed: float = 400


# Called when the node enters the scene tree for the first time.
var velAngular = PI

func _process(delta: float) -> void:
	rotation += velAngular * delta
	var velocidad = Vector2.UP.rotated(rotation) * speed
	position += velocidad * delta
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		interact.emit()
