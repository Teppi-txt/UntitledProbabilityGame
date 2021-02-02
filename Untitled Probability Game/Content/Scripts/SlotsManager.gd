extends Node

var red = preload("res://Content/Sprites/Fruits/red.png")
var green = preload("res://Content/Sprites/Fruits/green.png")
var orange = preload("res://Content/Sprites/Fruits/orange.png")

var possible_outcomes = ["red", "green", "orange"]
var slot_amount = 3

func get_outcome():
	var slots = []
	for slot in range(0, slot_amount):
		slots.append(possible_outcomes[randi() % possible_outcomes.size()])
	for i in range(0, 1000):
		for x in range(1, 4):
			print("x")
			get_node(str(x)).set_texture(get("red"))
			get_node(str(x)).set_texture(get("orange"))
			get_node(str(x)).set_texture(get("green"))
	for i in range(1, 4):
		get_node(str(i)).set_texture(get(slots[i - 1]))

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_outcome()
