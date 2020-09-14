extends Spatial

func _ready():
	for node in get_children():
		if node.name!="WorldEnvironment":
			node.visible=true
			if not node.is_in_group("Profile"+str(Global.current_profile)):
				node.visible=false

func _on_profile_change():
	Global.current_profile = (Global.current_profile) % 3 + 1
	for node in get_children():
		if node.name!="WorldEnvironment":
			node.visible=true
			if not node.is_in_group("Profile"+str(Global.current_profile)):
				node.visible=false
