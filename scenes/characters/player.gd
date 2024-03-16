extends CharacterBody2D

@export var speed: int = 35
@onready var animations = $AnimationPlayer

func getInput():
	var moveDirection = Input.get_vector("left", "right", "up", "down")
	velocity = moveDirection * speed
	
func updateAnimation():
	if velocity.length() == 0:
		animations.stop()
	else: 
		var direction = "Down"
		animations.play("walk" + direction)
		
		
func _physics_process(delta):
	updateAnimation()
	getInput()
	move_and_slide()
	



