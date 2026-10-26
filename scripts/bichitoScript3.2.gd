extends Sprite2D #Script del bichito

@export var speed: float = 240.0 #Velocidad 

func _ready() -> void: #Función para preparar al jugador
	print("Jugador preparado")

func _process(delta: float) -> void: #Función de un proceso --> Sumar punto --> Lee una entrada
	var accion := Input.is_action_just_pressed("SumarPunto") #Al presionar el "+"
	if accion:
		_sumarPunto() #--> Función para sumar el punto
		
var puntos:int = 0 #poner fuera de la función pq se reinicia todo el rato sie stá dentro

func _sumarPunto() -> void: #void si no devuelve nada
	puntos += 1
	print(puntos)
	
	if puntos >=5:
		print("Objetivo alcanzado")	
