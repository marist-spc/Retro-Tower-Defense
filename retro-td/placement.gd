extends Node2D





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	mouse_position = get_canvas_transform().affine_inverse() * get_viewport().get_mouse_position()
	$"../../Area2D".position = mouse_position
