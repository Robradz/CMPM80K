extends RigidBody2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func _integrate_forces(state):
	var resetpos= Vector2(50,200)
	var xform = state.get_transform()
	if position.y > get_viewport_rect().end.y:
		xform.origin.y=(320)
		xform.origin.x=(400)
		state.set_transform(xform)
		#set_sleeping(true)
		
		#set_sleeping(false)
