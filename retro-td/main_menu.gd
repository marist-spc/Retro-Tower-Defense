extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed():
	pass


func _on_motherboard_button_pressed():
	print("motherboard_open")


func _on_windows_button_pressed():
	print("windows_open")


func _on_firewall_button_pressed():
	print("firewall_open")
