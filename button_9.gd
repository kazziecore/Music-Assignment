extends Button
@onready var music_player = $music_player
@onready var button_9 = $"."

var is_playing : bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	music_player.play()
	button_9.text = "Pause Music"
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if is_playing:
		music_player.stop()
		button_9.text = "Play Music"
	else:
		music_player.play()  # Start playing the music
		button_9.text = "Pause Music"
	
	is_playing = !is_playing
	pass # Replace with function body.
