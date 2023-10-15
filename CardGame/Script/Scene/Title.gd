extends Node

func _ready():
	pass

func _process(delta):
	input_handle()
	
func input_handle():
	if Input.is_action_just_released("click_left"):
		var mouse = get_viewport().get_mouse_position()
		print(mouse)
