# ch18b018 Pitta Sravani
# When we press right/D key, you'll move right. If we press down arrow/S key, you'll move down.
extends AnimatedSprite
func _ready():
	set_process(true)
	
func _process(_delta):
	if Input.is_key_pressed(KEY_RIGHT) || Input.is_key_pressed(KEY_D) :
	#  Input.is_action_pressed("ui_right"):
		play("run")
		position.x += 8
	elif Input.is_key_pressed(KEY_DOWN) || Input.is_key_pressed(KEY_S):
	#Input.is_action_pressed("ui_down"):
		play("run")
		position.y += 8
	else:
		play("idle")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
