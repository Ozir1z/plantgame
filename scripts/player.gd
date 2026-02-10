extends Node2D

@export var speed = 400

var screen_size
var current_plant : Plant

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:	
	handle_movement_input(delta)
	if(Input.is_action_just_pressed("interact") && current_plant != null) :
		current_plant.dothing();


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area is Plant:
		current_plant = area


func _on_area_2d_area_exited(area: Area2D) -> void:
	if area is Plant:
		current_plant = null
		
func handle_movement_input(delta : float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
