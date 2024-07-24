extends Node2D

var zombie = preload("res://zombie.tscn")
var s 
var times = 1

func _ready():
	$Timer.wait_time = randi_range(1,4)
	Global.speed = 0

func _physics_process(_delta):
	$ui/Label.text = String("Score:") + str(Global.score)


func _on_timer_timeout():
	s = zombie.instantiate() as Area2D
	s.global_position = $spawn_pos.global_position
	self.add_child(s)
	$spawn_pos.position.y = randi_range(10,641)
	@warning_ignore("narrowing_conversion")
	$Timer.wait_time = randi_range(1.5,1) 



func _on_tick_timeout():
	Global.add_speed()


func _on_score_timer_timeout():
	Global.add_score(times)

func multiply(multiplacation):
	times += multiplacation
	$Until_run_out.start()

func _on_until_run_out_timeout():
	times = 1
