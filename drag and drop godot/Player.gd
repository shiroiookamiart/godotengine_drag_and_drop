extends KinematicBody2D


var press: bool = false

func _physics_process(delta):
	if press:
		move_player()
	pass
	
func move_player() -> void:
	self.global_position = get_global_mouse_position()
	pass	

func _on_Player_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			press = true
		else:
			press = false	
	pass # Replace with function body.
