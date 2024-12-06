extends HSlider
@onready  var pitch_slider: HSlider = $"."

@onready var meow: AudioStreamPlayer = $"../Meow"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	meow.pitch_scale = pitch_slider.value
	pitch_slider.value_changed.connect(_on_slider_value_changed) 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_slider_value_changed(value: float) -> void:
	meow.pitch_scale = value
	pass # Replace with function body.
