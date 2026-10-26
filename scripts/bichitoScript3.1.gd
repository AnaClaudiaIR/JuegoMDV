extends Sprite2D

@export var speed: float = 340.0 #Velocidad 

func _process(delta: float) -> void: #process para recibir datos de entrada --> Que se mueva
	var direction1 := Input.get_axis("move_left","move_right") #moverse horizontalmente
	position.x += direction1 * speed * delta
	
	var direction2 := Input.get_axis("move_up","move_down") #moverse verticalmente
	position.y += direction2 * speed * delta
