extends Label
@onready var game_manager: Node = %"game manager"
@onready var end_text: Label = $"."

func changeText():
	if game_manager.points == 3:
		end_text.text = 'you have enough!'
