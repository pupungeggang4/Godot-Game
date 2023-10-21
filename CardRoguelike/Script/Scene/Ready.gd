extends Node

func _ready():
	Var.state = ""
	Var.selected_character = -1
	get_node("SelectFrame").hide()
	
	for i in range(6):
		get_node("Character" + str(i + 1)).position = Vector2(UI.ready.button_character[i][0], UI.ready.button_character[i][1])

func _process(delta):
	if Input.is_action_just_released("click_left"):
		var mouse = get_viewport().get_mouse_position()
		
		if Var.pause == false:
			if Var.state == "":
				if FuncPhysics.point_inside_rect_array(mouse[0], mouse[1], UI.button_back):
					get_tree().change_scene_to_file("res://Scene/Title.tscn")
				
				for i in range(6):
					if FuncPhysics.point_inside_rect_array(mouse[0], mouse[1], UI.ready.button_character[i]):
						get_node("SelectFrame").show()
						get_node("SelectFrame").position = Vector2(UI.ready.button_character[i][0], UI.ready.button_character[i][1])
						Var.selected_character = i
						
				if FuncPhysics.point_inside_rect_array(mouse[0], mouse[1], UI.ready.button_start):
					if Var.selected_character != -1:
						get_tree().change_scene_to_file("res://Scene/Map.tscn")
						Var.game = Var.class_game.new()
						Var.game.map = []
