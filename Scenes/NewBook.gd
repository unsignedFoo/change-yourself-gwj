extends KinematicBody

export var target_values = Vector3(0,0,0)
var current_values = Vector3(0,0,0)

func check_value():
	print(current_values)
	if target_values == current_values:
		visible = true

func _on_Outer_wheel_moved(value):
	current_values.x = value
	check_value()

func _on_Middle_wheel_moved(value):
	current_values.y = value
	check_value()

func _on_Inner_wheel_moved(value):
	current_values.z = value
	check_value()
