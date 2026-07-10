extends CanvasLayer

signal stopTimer

@export var cryptoScreen: Label
@export var securityScreen: Label

var current_score = 500
var security=100

func add_points(amount: int):
	current_score += amount
	
	cryptoScreen.text="Crypto: "+str(current_score)
	
var amount = 1

func _process(_delta: float) -> void:
	cryptoScreen.text="Crypto: "+str(current_score)


func _on_endpoint_body_entered(body: Node2D) -> void:
	security-=body.health
	
	
	securityScreen.text="Security: "+ str(security)
	
	body.queue_free()
	

func death():
	if security<=0:
		stopTimer.emit()
