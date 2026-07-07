extends CharacterBody2D

@export var colorType=red

var red=1
var blue=2
var green=3
var yellow=4
var pink=5
var brown=6
var gray=7

var health


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if colorType==red:
		$AnimatedSprite2D.play("red-walk")
		
	elif colorType==blue:
		$AnimatedSprite2D.play("blue-walk")
	elif colorType==green:
		$AnimatedSprite2D.play("green-walk")
	elif colorType==yellow:
		$AnimatedSprite2D.play("yellow-walk")
	elif colorType==pink:
		$AnimatedSprite2D.play("pink-walk")
	elif colorType==brown:
		$AnimatedSprite2D.play("brown-walk")
	elif colorType==gray:
		$AnimatedSprite2D.play("gray-walk")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
