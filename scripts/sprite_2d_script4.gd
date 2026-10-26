extends Sprite2D

func _on_timer_timeout():
	visible = not visible

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_timeout)


var speed = 400
var velAngular = PI

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation+= velAngular * delta
	var velocidad = Vector2.UP.rotated(rotation) * speed
	position += velocidad * delta


func _on_button_pressed() -> void:
	set_process(not is_processing())
