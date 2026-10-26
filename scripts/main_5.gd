extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RoundTimer.start()
	$Player.interact.connect(_on_player_interact)
	$RoundTimer.timeout.connect(_on_round_timer_timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_player_interact() -> void:
	print("Interacción")

func _on_round_timer_timeout() -> void:
	$Player.set_process(false)
	$Player.set_process_unhandled_input(false)
	print("Fin")
