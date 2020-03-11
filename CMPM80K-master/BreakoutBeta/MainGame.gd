extends Node2D

var num_lives = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_child_count() <= 5):
		get_tree().change_scene("res://win.tscn")

