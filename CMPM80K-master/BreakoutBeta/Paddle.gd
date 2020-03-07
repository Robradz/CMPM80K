extends KinematicBody2D
var speed = 400;
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
	if(get_global_position().x > get_viewport_rect().size.x - get_node("Boat").get_texture().get_size().x / 2):
		set_global_position(Vector2(get_viewport_rect().size.x - get_node("Boat").get_texture().get_size().x / 2, get_global_position().y))
	elif(get_global_position().x < get_node("Boat").get_texture().get_size().x / 2):
		set_global_position(Vector2(get_node("Boat").get_texture().get_size().x / 2, get_global_position().y))
