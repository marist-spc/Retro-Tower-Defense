extends CharacterBody2D


# when spawning a new virus, we must set this variable
@export var path: PathFollow2D
@export var colorType=8

var health=250
# speed of virus in pixels/sec
var speed=38
var progress=0

var speedMultiplier=.9

var goodSpeed=speedMultiplier*speed

func _ready() -> void:
	$AnimatedSprite2D.play("walk")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# increase the progress of the virus based on the speed and delta
	progress+=goodSpeed*delta
	path.progress = progress
	position = path.position
	
	
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

func health_zero():
	if health<=0:
		$AnimatedSprite2D.play("death")
		$hud.current_score = $hud.current_score + 250
		queue_free()
		
