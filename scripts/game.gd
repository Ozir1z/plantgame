extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sc = $Background.texture.get_size()
	var vc = Vector2(get_viewport().size)
	#$Camera.zoom = vc / sc


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
