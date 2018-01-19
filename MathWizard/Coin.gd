extends Area2D

export (bool) var correct
export (String) var info
signal correct_coin_picked
signal wrong_coin

func _ready():
	# correct = randi()%2 == 0
	$Label.text = "" + str(info)

func _on_Coin_area_entered( area ):
	print(area)
	if(correct):
		emit_signal("correct_coin_picked")
		queue_free()
	else:
		emit_signal("wrong_coin")
