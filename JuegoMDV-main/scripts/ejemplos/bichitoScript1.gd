extends Sprite2D

func _init():
	print("Hola")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var speed = 400
var velAngular = PI

func _process(delta: float) -> void:
	rotation += velAngular * delta
	var velocidad = Vector2.UP.rotated(rotation) * speed
	position += velocidad * delta
	
	
