extends CharacterBody2D


# when spawning a new virus, we must set this variable
@export var path: PathFollow2D


var health=500
# speed of virus in pixels/sec
var speed=38
var progress=0

var speedMultiplier=.5

var goodSpeed=speedMultiplier*speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# increase the progress of the virus based on the speed and delta
	progress+=goodSpeed*delta
	path.progress = progress
	position = path.position
	
	
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
	#security-=health

func health_zero():
	pass
