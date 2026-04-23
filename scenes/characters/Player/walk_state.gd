



extends NodeState


@export var	player:CharacterBody2D
@export var animated_sprite_2d: AnimatedSprite2D
@export var speed: int =50



func _on_process(_delta : float) -> void:
	
	
	
	
	
	var direciton: Vector2 =GameInputEvents.movement_input()
	
	if direciton == Vector2.UP:
		animated_sprite_2d.play('walk_back')
	elif direciton == Vector2.RIGHT:
		animated_sprite_2d.play('walk_right')
		
			
	elif direciton == Vector2.DOWN:
		animated_sprite_2d.play('walk_front')
			
	elif direciton == Vector2.LEFT:
	
		animated_sprite_2d.play('walk_left')



	player.velocity = direciton * speed 
	player.move_and_slide()


	




func _on_physics_process(_delta : float) -> void:
	pass






func _on_next_transitions() -> void:
	
	
	
	
	if !GameInputEvents.is_movement_input():
		transition.emit('idel')

func _on_enter() -> void:
	
	
	
	pass

func _on_exit() -> void:
	
	
	pass
