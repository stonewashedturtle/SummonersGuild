extends Control

signal room_chosen(room_type)

func _ready():
    for button in get_children():
        if button is Button:
            button.connect("pressed", Callable(self, "_on_option_pressed").bind(button.name))

func _on_option_pressed(room_type):
    emit_signal("room_chosen", room_type)
