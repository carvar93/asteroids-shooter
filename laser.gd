extends Area2D


@export var laserSpeed : float 

func _ready() -> void:
	add_to_group("laser")
	area_entered.connect(_on_area_entered)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += laserSpeed * delta 


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("asteroid"):
		queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
