extends Node

var current_tetromino

@onready var board: Board = $"../Board"


func _ready() -> void:
	current_tetromino = Shared.Tetromino.values().pick_random()
	board.spawn_tetromino(current_tetromino, false, null)
	
