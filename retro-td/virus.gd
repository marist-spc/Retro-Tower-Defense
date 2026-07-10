extends CharacterBody2D

@export var colorType=0

# when spawning a new virus, we must set this variable
@export var path: PathFollow2D

@export var hud: CanvasLayer

var red=1
var blue=2
var green=3
var yellow=4
var pink=5
var brown=6
var gray=7

var health=0
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
var blueSpeed=1.05
var greenSpeed=1.7
var yellowSpeed=1.3
var pinkSpeed=1.8
var brownSpeed=1
var graySpeed=.6

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
	
	health_zero()
	
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

func health_zero():
	if health<=0:
		if colorType==red:
			$AnimatedSprite2D.play("red-die")
			$hud.current_score = $hud.current_score + redHealth
		elif colorType==blue:
			$hud.current_score = $hud.current_score + blueHealth
			$AnimatedSprite2D.play("blue-die")
		elif colorType==green:
			$hud.current_score = $hud.current_score + greenHealth
			$AnimatedSprite2D.play("green-die")
		elif colorType==yellow:
			$AnimatedSprite2D.play("yellow-die")
			$hud.current_score = $hud.current_score + yellowHealth
		elif colorType==pink:
			$AnimatedSprite2D.play("pink-die")
			$hud.current_score = $hud.current_score + pinkHealth
		elif colorType==brown:
			$AnimatedSprite2D.play("brown-die")
			$hud.current_score = $hud.current_score + brownHealth
		elif colorType==gray:
			$AnimatedSprite2D.play("gray-die")
			$hud.current_score = $hud.current_score + grayHealth
		
		
		
		queue_free()
		


func ending():
	if $hud.security<=0:
		queue_free()
		$SpawnTimer.stop()
