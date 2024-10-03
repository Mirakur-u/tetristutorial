extends Node

class_name Board

signal tetromino_locked

var tetrominos: Array[Tetromino] = []
@export var tetromino_scene: PackedScene

func spawn_tetromino(type: Shared.Tetromino, is_next_piece, spawn_position):
	var tetromino_data = Shared.data[type]
	var tetromino = tetromino_scene.instantiate() as Tetromino
	
	
	tetromino.tetromino_data = tetromino_data
	tetromino.is_next_piece = is_next_piece
	
	if is_next_piece == false:
		tetromino.position = tetromino_data.spawn_position
		tetromino.other_tetrominos = tetrominos
		tetromino.lock_tetromino.connect(on_tetromino_locked)
		add_child(tetromino)
	

func on_tetromino_locked(tetromino: Tetromino):
	tetrominos.append(tetromino)
	tetromino_locked.emit()
	#TODO: check is game over
	#TODO: check for the lines to clear
	 
