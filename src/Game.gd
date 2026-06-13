extends Node
class_name Game

var combat_system: CombatSystem
var current_scene: String = "menu"

func _ready():
	combat_system = CombatSystem.new()
	add_child(combat_system)

func start_combat():
	current_scene = "combat"
	combat_system.reset_combat()

func return_to_menu():
	current_scene = "menu"

func get_combat_system() -> CombatSystem:
	return combat_system