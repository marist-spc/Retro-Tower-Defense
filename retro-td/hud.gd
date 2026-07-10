extends CanvasLayer
var current_score = 500

func add_points(amount: int):
	current_score += amount
	



func _on_button_pressed():
	$Back_menu.play()
	get_parent().get_node("Exit").show()


func _on_file_button_pressed() -> void:
	$FileOpen.play()
	get_parent().get_node("TowerSelect").show()
