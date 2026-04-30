extends CharacterBody2D

@export var laser_scene:PackedScene
@export var speed :float


	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("shoot"):
		create_laser()

	process_inputs()
	move_and_slide()


func process_inputs():
	var y_input = Input.get_axis("up", "down")
	velocity.y = y_input * speed

	var x_input = Input.get_axis("left", "right")
	velocity.x = x_input * speed
	

func create_laser():
	var laser_instance = laser_scene.instantiate()
	add_sibling(laser_instance)
	laser_instance.global_position = $ShootPoint.global_position
