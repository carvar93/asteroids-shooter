extends Area2D

@export var min_speed : float = 100
@export var max_speed : float = 300
@export var max_rotation_speed : float = 180
@export var min_rotation_speed : float = -180

var random_speed
var random_rotation_speed


func _ready() -> void:
	random_speed = randf_range(min_speed,max_speed)
	random_rotation_speed  = randf_range(min_rotation_speed,max_rotation_speed)
	

func _process(delta: float) -> void:
	position.x -= random_speed * delta  # se resta porque quiero el movimiento de derecha a izquierda
	rotation_degrees += random_rotation_speed * delta
