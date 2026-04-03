extends Marker2D

@export var big_asteroid_scene:PackedScene # tipo de variable es PackedScene y es el archivo donde esta la escena 

@export var min_x : float 
@export var min_y : float 

func create_asteroid():
	var big_asteroid_instance = big_asteroid_scene.instantiate() # al llamarlo creo una instancia de la escena en memoria
	add_child(big_asteroid_instance) #agregarlo al arbol de nodos
	var random_y = randf_range(min_x,min_y)
	big_asteroid_instance.global_position.y = random_y
	  
func _on_timer_timeout() -> void:
	create_asteroid() # Replace with function body.
