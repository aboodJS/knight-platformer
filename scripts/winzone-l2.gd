extends Area2D

@onready var game_manager: Node = %"game manager"




func _on_body_entered(body: Node2D) -> void:
	if game_manager.points == 5:
		get_tree().change_scene_to_file("res://scenes/level_two.tscn")
	else:
		pass
		
	
