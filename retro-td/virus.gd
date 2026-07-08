extends CharacterBody2D

@export var colorType=red

# when spawning a new virus, we must set this variable
@export var path: PathFollow2D

var red=1
var blue=2
var green=3
var yellow=4
var pink=5
var brown=6
var gray=7

var health
# speed of virus in pixels/sec
var speed=37
var progress=0

var redHealth=1
var blueHealth=2
var greenHealth=4
var yellowHealth=8
var pinkHealth=16
var brownHealth=32
var grayHealth=100

var redSpeed=1
var blueSpeed=1.1
var greenSpeed=2
var yellowSpeed=1.5
var pinkSpeed=2
var brownSpeed=1
var graySpeed=.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if colorType==red:
		$AnimatedSprite2D.play("red-walk")
		health=redHealth
		speed*=redSpeed 
	elif colorType==blue:
		$AnimatedSprite2D.play("blue-walk")
		health=blueHealth
		speed*=blueSpeed
	elif colorType==green:
		$AnimatedSprite2D.play("green-walk")
		health=greenHealth
		speed*=greenSpeed
	elif colorType==yellow:
		$AnimatedSprite2D.play("yellow-walk")
		health=yellowHealth
		speed*=yellowSpeed
	elif colorType==pink:
		$AnimatedSprite2D.play("pink-walk")
		health=pinkHealth
		speed*=pinkSpeed
	elif colorType==brown:
		$AnimatedSprite2D.play("brown-walk")
		health=brownHealth
		speed*=brownSpeed
	elif colorType==gray:
		$AnimatedSprite2D.play("gray-walk")
		health=grayHealth
		speed*=graySpeed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# increase the progress of the virus based on the speed and delta
	progress+=speed*delta
	path.progress = progress
	position = path.position
	
	
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
	#security-=health

func health_zero():
	pass
