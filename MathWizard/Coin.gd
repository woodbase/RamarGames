extends Area2D

export (bool) var correct
export (String) var info
signal correct_coin_picked

func _ready():
	# correct = randi()%2 == 0
	$Label.text = "" + str(info)

func _on_Coin_area_entered( area ):
	print(area)
	if(correct):
		emit_signal("correct_coin_picked")
		print(correct)
