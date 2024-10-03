extends Node

var current_tetromino

@onready var board: Board = $"../Board"


func _ready() -> void:
	current_tetromino = Shared.Tetromino.values().pick_random()
	board.spawn_tetromino(current_tetromino, false, null)
	board.tetromino_locked.connect(on_tetromino_locked)


func on_tetromino_locked():
	var new_tetromino = Shared.Tetromino.values().pick_random()
	board.spawn_tetromino(new_tetromino, false, null)
