extends Node
class_name CombatSystem

var player_hp: int = 100
var enemy_hp: int = 50
var current_question = null
var question_bank: QuestionBank

signal player_hp_changed(hp: int)
signal enemy_hp_changed(hp: int)
signal question_loaded(question: Dictionary)
signal combat_ended(player_won: bool)

func _ready():
	question_bank = QuestionBank.new()
	reset_combat()

func reset_combat():
	player_hp = 100
	enemy_hp = 50
	current_question = question_bank.get_random_question()
	emit_signal("player_hp_changed", player_hp)
	emit_signal("enemy_hp_changed", enemy_hp)
	emit_signal("question_loaded", current_question)

func answer_question(answer_index: int) -> bool:
	if current_question == null:
		return false
	
	var is_correct = (answer_index == current_question["resposta_correta"])
	
	if is_correct:
		enemy_hp -= current_question["dano"]
		enemy_hp = max(0, enemy_hp)
		emit_signal("enemy_hp_changed", enemy_hp)
		print("Acertou! Causou ", current_question["dano"], " de dano!")
	else:
		player_hp -= 10
		player_hp = max(0, player_hp)
		emit_signal("player_hp_changed", player_hp)
		print("Errou! Recebeu 10 de dano!")
	
func check_combat_end() -> bool:
	if enemy_hp <= 0:
		emit_signal("combat_ended", true)
		return true
	elif player_hp <= 0:
		emit_signal("combat_ended", false)
		return true
	
	# Carrega próxima pergunta se ninguém morreu
	current_question = question_bank.get_random_question()
	emit_signal("question_loaded", current_question)
	return false

func get_player_hp() -> int:
	return player_hp

func get_enemy_hp() -> int:
	return enemy_hp