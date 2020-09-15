extends StaticBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var tween = get_parent().get_node("WheelTween")
export var current_degree = 0

func _ready():
	rotation_degrees = Vector3(0,0,current_degree)
#	set_process_input(true)
##
#func _input(event):
#	if event.is_action_pressed("ui_do_action"):
#		_rotate_right()

func _rotate_right():
	tween.interpolate_property(self, "rotation_degrees", Vector3(0,0,current_degree), Vector3(0,0,current_degree + 90), 1)
	tween.start()
	current_degree += 90
	if current_degree > 360:
		current_degree = 0


func _on_WheelTween_tween_all_completed(degree: int):
	pass
