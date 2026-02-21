extends CharacterBody2D

@export var speed :float

func _physics_process(delta: float) -> void:
	#Fisicas
	#Movimiento de cuerpos fisicos (characterBody2D,RigidBody2d)
	var y_input = Input.get_axis("up","down") # las 2 inputs definidas 
	velocity.y = y_input * speed
	move_and_slide()
