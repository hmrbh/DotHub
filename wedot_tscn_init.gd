extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DisplayServer.window_set_size(DisplayServer.screen_get_size() * 0.656)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
