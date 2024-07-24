extends Node

var speed = 0
var score = 0 

func add_speed():
	if not speed == 100:
		speed +=1

func add_score(multi):
	score += 1 *multi 
