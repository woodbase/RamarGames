extends Node

onready var coins = $Coins

func _ready():
	for i in coins.get_children():
		i.connect("correct_coin_picked", self, "_on_correct_coin_picked")
		i.connect("wrong_coin", $Player, "_on_wrong_coin")

func _on_correct_coin_picked():
	print("Uh signal") 