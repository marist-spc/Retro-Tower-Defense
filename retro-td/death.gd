extends CanvasLayer


func _on_button_pressed() -> void:
	$AudioStreamPlayer.play()
	$"error2".show()

func _on_button_2_pressed() -> void:
	$AudioStreamPlayer2
	$"error3".show()


func _on_button_3_pressed() -> void:
	$AudioStreamPlayer3.play()
	$"error4".show()

func _on_button_4_pressed() -> void:
	$AudioStreamPlayer4.play()
	$"error5".show()


func _on_button_5_pressed() -> void:
	$AudioStreamPlayer5.play()
	get_tree().change_scene_to_file("res://main_menu.tscn")
	
