extends CharacterBody2D


# when spawning a new virus, we must set this variable
@export var path: PathFollow2D

@export var colorType=10

var health=5000
# speed of virus in pixels/sec
var speed=36
var progress=0

var speedMultiplier=0.069

var goodSpeed=speedMultiplier*speed


func _ready() -> void:
	$AnimatedSprite2D.play("walk")
	$AnimatedSprite2D2.play("walk")
	$AnimatedSprite2D3.play("walk")
	$AnimatedSprite2D4.play("walk")
	$AnimatedSprite2D5.play("walk")




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# increase the progress of the virus based on the speed and delta
	progress+=goodSpeed*delta
	path.progress = progress
	position = path.position
	
	if velocity.y<=-1:
		rotation=-90
	elif velocity.y>=1:
		rotation=90
	if velocity.x>=1:
		rotation=0
	elif velocity.x<=-1:
		rotation=180
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
	

func health_zero():
	if health<=0:
		$AnimatedSprite2D.play("death")
		$AnimatedSprite2D2.play("death")
		$AnimatedSprite2D3.play("death")
		$AnimatedSprite2D4.play("death")
		$AnimatedSprite2D5.play("death")
		queue_free()
		
