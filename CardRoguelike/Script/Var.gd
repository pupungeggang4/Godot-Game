extends Node

var pause = false
var state = ""

var selected_character = -1
var game = null
var player = null

class class_game:
	var map = [
		[0, 2, 2, 2, 2, 2, 2, 0],
		[1, 2, 2, 2, 2, 2, 2, 5],
		[0, 2, 2, 2, 2, 2, 2, 0],
	]

class class_player:
	var level = 0
