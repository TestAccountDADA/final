extends Area2D

@onready var timer: Timer = $Timer
@onready var gamemanager: Node = %Gamemanager
@onready var player: CharacterBody2D = $"../Player"

func _on_body_entered(body: Node2D) -> void:
	print("You Died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").disabled = true
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	print(gamemanager.spawnpoint)
	player.position = gamemanager.spawnpoint
	player.velocity = Vector2(0,0)
	player.reset_physics_interpolation()
	player.get_node("CollisionShape2D").disabled = false
	
