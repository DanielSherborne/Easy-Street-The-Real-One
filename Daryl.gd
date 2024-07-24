extends CharacterBody2D

var speed = 400

func _physics_process(_delta):
	var direction = Input.get_axis("ui_up","ui_down")
	if direction:
		velocity.y = direction * speed
	else:
		velocity.y =lerp(velocity.y,0.0,0.2)
	move_and_slide()
