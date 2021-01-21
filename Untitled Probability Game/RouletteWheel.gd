extends Sprite

onready var tween = $Tween
var outcome = null
export(int) var amount_of_outcomes = 8
var increment = -360/amount_of_outcomes
var extra_spin_degrees = 360 * 4

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		rotate_wheel(get_outcome())

func get_outcome():
	randomize()
	outcome = (randi()%amount_of_outcomes) + 1
	return outcome

func rotate_wheel(outcome):
	var destination = ((randi()%increment) + outcome * increment) + extra_spin_degrees
	tween.interpolate_property(self, "rotation_degrees",
		rotation_degrees, destination, 7,
		Tween.TRANS_EXPO, Tween.EASE_OUT)
	tween.start()

func _on_Tween_tween_completed(object, key):
	print(outcome)
