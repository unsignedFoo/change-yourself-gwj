extends Spatial

func _ready():
	for node in get_children():
		if node.name!="WorldEnvironment":
			node.visible=true
			if not node.is_in_group("Profile"+str(Global.current_profile)):
				node.visible=false

func _on_profile_change():
	Global.current_profile = (Global.current_profile) % 3 + 1
	var anim = get_node("Desk/AnimationPlayer") as AnimationPlayer
	anim.get_animation("OpenDesk")
	anim.get_parent().get_node("MainDesk/Cajon").is_open = false
	anim.seek(0,true)
	for node in get_children():
		if node.name!="WorldEnvironment":
			node.visible=true
			if not node.is_in_group("Profile"+str(Global.current_profile)):
				node.visible=false
