extends Node
var sprite_tails = preload("res://Content/Sprites/peg.png")
var sprite_heads = preload("res://Content/Sprites/icon.png")

func flip_coin():
	randomize()
	var result = bool(randi()%2)
	if result:
		$Coin.set_texture(sprite_heads)
	else:
		$Coin.set_texture(sprite_tails)

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		flip_coin()
	randomize()
