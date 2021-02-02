extends RigidBody2D

func _ready():
	randomize()
	position.x = (randi()%304) - 152
