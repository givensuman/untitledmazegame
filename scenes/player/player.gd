# Player scene (save as player.tscn)
# Scene structure:
# - CharacterBody2D (root node)
#   - ColorRect

# Attach this script to the CharacterBody2D node
extends CharacterBody2D

@export var speed: int = 300

func _physics_process(delta):
	# Get input direction
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# Calculate movement
	velocity = direction * speed
	
	# Move the character
	move_and_slide()
