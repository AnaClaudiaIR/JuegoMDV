extends Node2D

var score: int = 0
var playing: bool = true
@export var interaction_radius: float = 50 #Al cambiarlo, el área desde donde se puede disparar cambia


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RoundTimer.start()
	$Player.interact.connect(_on_player_interact)
	$RoundTimer.timeout.connect(_on_round_timer_timeout)
	$Player.position.x = 200

	update_status()
	$RoundTimer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_player_interact() -> void:
	if not playing:
		return
	
	var distance: float = $Player.global_position.distance_to($Target.global_position)
	if distance <= interaction_radius:
		score += 1
		update_status()
		print("Interacción")

func _on_round_timer_timeout() -> void:
	playing = false
	$Player.set_process(false)
	$Player.set_process_unhandled_input(false)
	$StatusLabel.text = "Fin: " + str(score) + " puntos"
	print("Fin")

func update_status() -> void:
	$StatusLabel.text = "Puntos: " + str(score)
