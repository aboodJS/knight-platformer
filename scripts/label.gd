extends Label

@onready var game_manager: Node = %"game manager"
@onready var label: Label = $"."

func showScore():
	if  game_manager.points > 0:
		label.text = 'score: ' + str(game_manager.points)
	else:
		print('no coins?')
