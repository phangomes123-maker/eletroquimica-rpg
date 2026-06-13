extends Control

var combat_system: CombatSystem
var current_answer = -1

func _ready():
	combat_system = CombatSystem.new()
	add_child(combat_system)
	
	combat_system.question_loaded.connect(_on_question_loaded)
	combat_system.player_hp_changed.connect(_on_player_hp_changed)
	combat_system.enemy_hp_changed.connect(_on_enemy_hp_changed)
	combat_system.combat_ended.connect(_on_combat_ended)
	
	# Conecta os botões de resposta
	$VBoxContainer/AnswersContainer/Option0.pressed.connect(_on_option_pressed.bind(0))
	$VBoxContainer/AnswersContainer/Option1.pressed.connect(_on_option_pressed.bind(1))
	$VBoxContainer/AnswersContainer/Option2.pressed.connect(_on_option_pressed.bind(2))
	$VBoxContainer/AnswersContainer/Option3.pressed.connect(_on_option_pressed.bind(3))
	
	combat_system.reset_combat()

func _on_question_loaded(question: Dictionary):
	$VBoxContainer/QuestionLabel.text = question["pergunta"]
	$VBoxContainer/AnswersContainer/Option0.text = question["opcoes"][0]
	$VBoxContainer/AnswersContainer/Option1.text = question["opcoes"][1]
	$VBoxContainer/AnswersContainer/Option2.text = question["opcoes"][2]
	$VBoxContainer/AnswersContainer/Option3.text = question["opcoes"][3]

func _on_player_hp_changed(hp: int):
	$VBoxContainer/PlayerHPLabel.text = "Seu HP: " + str(hp)

func _on_enemy_hp_changed(hp: int):
	$VBoxContainer/EnemyHPLabel.text = "Inimigo HP: " + str(hp)

func _on_option_pressed(option: int):
	combat_system.answer_question(option)
	var is_end = combat_system.check_combat_end()
	
	if not is_end:
		await get_tree().create_timer(0.5).timeout


func _on_combat_ended(player_won: bool):
	if player_won:
		$VBoxContainer/MessageLabel.text = "Vitória! Você venceu o inimigo!"
	else:
		$VBoxContainer/MessageLabel.text = "Derrota! Tente novamente."
	
	$VBoxContainer/ReturnButton.visible = true
	$VBoxContainer/AnswersContainer.visible = false

func _on_return_pressed():
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")