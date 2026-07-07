extends Node2D

@export var virusProtoype: PackedScene

@export var pathAssign: PathFollow2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_spawn_timer_timeout():
	var virus = virusProtoype.instantiate()
	virus.colorType=1
	virus.path=pathAssign
	# add the new virus to the scene tree (e.g., Firewall node)
	add_child(virus)
	# show the new virus
	virus.show()
