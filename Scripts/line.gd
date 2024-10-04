extends Node2D

class_name Line

var max_count

func is_line_full(max_count):
	return max_count == get_child_count()
