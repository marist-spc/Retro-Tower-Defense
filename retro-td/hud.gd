extends CanvasLayer

signal stopTimer

@export var cryptoScreen: Label
@export var securityScreen: Label

var current_score = 500
var security=100
var amount = 1


func add_points(amount: int):
	current_score += amount
	cryptoScreen.text="Crypto: "+str(current_score)


func _process(_delta: float) -> void:
	cryptoScreen.text="Crypto: "+str(current_score)
	if security<0:
		security=0
	


func _on_endpoint_body_entered(body: Node2D) -> void:
	security-=body.health
	
	
	securityScreen.text="Security: "+ str(security)
	
	body.queue_free()
	

func death():
	if security<=0:
		stopTimer.emit()


func _on_button_pressed():
	$Back_menu.play()
	get_parent().get_node("Exit").show()


func _on_file_button_pressed() -> void:
	$FileOpen.play()
	get_parent().get_node("TowerSelect").show()
