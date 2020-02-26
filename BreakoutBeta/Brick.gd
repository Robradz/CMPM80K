extends Sprite

onready var area2d = get_node("Area2D")

func _ready():
	area2d.connect("body_enter", self, "_on_brick_body_enter")
	
func _on_brick_body_enter(body):
	#if the ball hit the brick, destroy it
	if body.get_name() == "Ball":
			queue_free()
