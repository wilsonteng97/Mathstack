extends KinematicBody2D

#Set direction of which is up
const UP = Vector2(0,-1)
#Set gravity
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -500
# Vector2 holds data of x and y value
var motion = Vector2()
# Shorter than motionx = 0, motiony = 0;

func jump():
	motion.y = JUMP_HEIGHT	
	motion = move_and_slide(motion, UP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#Adds motion at every frame/gravity
	motion.y += GRAVITY
	
	#check if on floor
	if is_on_floor():
		#For debugging
		#print("On floor.")
		#for jumping
		if Input.is_action_just_pressed("ui_up"):
			jump()
		
	#Set motion to 0,0 if no motion
	motion = move_and_slide(motion, UP)
	if motion.y > 1000:
		get_tree().change_scene("res://menus/gameModes/Gameover.tscn")
	#For debugging
	#print(motion)
	
	#End
	pass
