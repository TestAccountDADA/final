extends Area2D

@onready var gamemanager: Node = %Gamemanager
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	gamemanager.add_point()
	print("Coin collected")
	animation_player.play("pickup animation")
