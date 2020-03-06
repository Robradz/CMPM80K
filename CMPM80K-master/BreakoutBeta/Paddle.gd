extends KinematicBody2D
var speed = 500;
var direction = 0
  # left or right on the x axisvar direction = 0

func _ready():
		set_process(true)

func _process(delta):
	var motion = Vector2(0,0)
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	if left:
			direction = -1
	elif right:
		direction = 1
	else:
		direction = 0
	motion = Vector2(direction,0)*speed*delta
	move_and_collide(motion)
