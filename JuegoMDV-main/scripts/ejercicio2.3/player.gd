extends Area2D

signal interact
signal hit

@export var speed: float = 400
var velAngular = PI

func _ready() -> void:
	hide()

func _process(delta: float) -> void:
	var direction = 0

	if Input.is_action_pressed("move_left"):
		direction = -1
	if Input.is_action_pressed("move_right"):
		direction = 1
	position.x += direction * speed * delta
	position.x = clamp(position.x, 0, get_viewport_rect().size.x)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		interact.emit()

func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false

func _on_body_entered(_body):
	hide()
	hit.emit()
	$CollisionShape2D.set_deferred("disabled", true)
