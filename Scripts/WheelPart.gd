extends StaticBody

onready var tween = get_parent().get_node("WheelTween")
export var current_degree = 0

signal wheel_moved(current_degree)

func _ready():
	rotation_degrees = Vector3(0,0,current_degree)

func _rotate_right():
	tween.interpolate_property(self, "rotation_degrees", Vector3(0,0,current_degree), Vector3(0,0,current_degree + 90), 1)
	tween.start()
	current_degree += 90
	if current_degree >= 360:
		current_degree = 0
	yield(tween, "tween_all_completed")
	emit_signal("wheel_moved", current_degree)
