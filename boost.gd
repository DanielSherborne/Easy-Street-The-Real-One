extends Area2D

func _physics_process(delta):
	position.x -= 5 + Global.speed


func _on_body_entered(body):
	owner.multiply(1)
