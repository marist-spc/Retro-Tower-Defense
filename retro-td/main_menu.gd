extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_motherboard_button_pressed() -> void:
	print("MB")


func _on_windows_button_pressed() -> void:
	print("W")


func _on_firewall_pressed() -> void:
	print("FW")
