extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var speed = 400
var velAngular = PI


func _process(delta: float) -> void:
	var direccion = 0
	if Input.is_action_pressed("move_left"):
		direccion = -1
	if Input.is_action_pressed("move_right"):
		direccion = 1
	
	rotation += velAngular * direccion * delta
	
	var velocidad = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		velocidad = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("move_down"):
		velocidad = Vector2.DOWN.rotated(rotation) * speed
	
	position += velocidad * delta
