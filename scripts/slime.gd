extends Node2D

var speed = 60
var direction = 1

@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight
@onready var animated_sprite = $AnimatedSprite2D

func _process(delta):
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	
	position.x += speed * direction * delta
