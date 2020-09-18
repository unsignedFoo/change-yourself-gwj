extends Spatial

export var animation_path: NodePath
var animation: AnimationPlayer
var is_open: bool = false

func _ready():
	if animation_path:
		animation = get_node(animation_path)

func _animate_desk():
	if not animation.is_playing() and not is_open:
		animation.play("OpenDesk")
	elif not animation.is_playing() and is_open:
		animation.play("CloseDesk")
	is_open = not is_open

func _on_object_picked():
	animation.play_backwards("OpenDesk")

