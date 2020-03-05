extends RigidBody2D
const BOOST = 4
const MAX = 300

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func _process(delta):
	var bodies = get_colliding_bodies()
	
	for body in bodies:
		#if position.y > get_viewport_rect().end.y:
		#	queue_free()
		if body.get_name() == "CollisionShape2D2":
			get_node("Ball").set_global_position(50,200)
		if body.get_name() == "Paddle":
			var speed = linear_velocity.length()
			var direction = position - body.get_node("Ancor").global_position
			var velocity = direction * min(speed + BOOST * delta, MAX * delta)
			linear_velocity = velocity

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
