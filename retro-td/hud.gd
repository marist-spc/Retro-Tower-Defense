extends CanvasLayer
var current_score = 500

var security=100

func add_points(amount: int):
	current_score += amount
	
var amount = 1


func _on_endpoint_body_entered(body: Node2D) -> void:
	security-=body.health
	
	print(security)
	
