class_name Plant extends Area2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func dothing():
	$Sprite2D.apply_scale(Vector2(2,2))
