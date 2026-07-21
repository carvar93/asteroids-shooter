extends Area2D


@export var laserSpeed : float 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += laserSpeed * delta 


func _on_area_entered(area: Area2D) -> void:
	queue_free()
