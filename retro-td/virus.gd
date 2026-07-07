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
var speed 

var redHealth=1
var blueHealth=2
var greenHealth=4
var yellowHealth=8
var pinkHealth=16
var brownHealth=32
var grayHealth=100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if colorType==red:
		$AnimatedSprite2D.play("red-walk")
		health=redHealth
	elif colorType==blue:
		$AnimatedSprite2D.play("blue-walk")
		health=blueHealth
	elif colorType==green:
		$AnimatedSprite2D.play("green-walk")
		health=greenHealth
	elif colorType==yellow:
		$AnimatedSprite2D.play("yellow-walk")
		health=yellowHealth
	elif colorType==pink:
		$AnimatedSprite2D.play("pink-walk")
		health=pinkHealth
	elif colorType==brown:
		$AnimatedSprite2D.play("brown-walk")
		health=brownHealth
	elif colorType==gray:
		$AnimatedSprite2D.play("gray-walk")
		health=grayHealth
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
