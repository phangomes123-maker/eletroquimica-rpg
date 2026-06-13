extends Node
class_name QuestionBank

var questions = [
	{
		"pergunta": "Qual é o produto da eletrólise da água (H₂O)?",
		"opcoes": ["O₂ e H₂", "O₂ e H₂O", "H₂ e CO₂", "O₃ e H₂"],
		"resposta_correta": 0,
		"explicacao": "Na eletrólise da água, obtemos oxigênio no ânodo e hidrogênio no cátodo.",
		"dano": 20
	},
	{
		"pergunta": "O que é uma pilha galvânica?",
		"opcoes": ["Um dispositivo que converte energia química em elétrica", "Um dispositivo que converte energia elétrica em química", "Um recipiente de vidro", "Uma bateria recarregável"],
		"resposta_correta": 0,
		"explicacao": "A pilha galvânica converte energia química em energia elétrica através de reações de oxidação-redução.",
		"dano": 15
	},
	{
		"pergunta": "Qual é o ânodo em uma pilha de Daniell?",
		"opcoes": ["Cobre (Cu)", "Zinco (Zn)", "Ferro (Fe)", "Carbono (C)"],
		"resposta_correta": 1,
		"explicacao": "Na pilha de Daniell, o zinco é o ânodo (eletrodo negativo onde ocorre oxidação).",
		"dano": 25
	},
	{
		"pergunta": "O que é oxidação?",
		"opcoes": ["Perda de elétrons", "Ganho de elétrons", "Reação com oxigênio", "Perda de prótons"],
		"resposta_correta": 0,
		"explicacao": "Oxidação é a perda de elétrons por uma substância durante uma reação química.",
		"dano": 15
	},
	{
		"pergunta": "Qual metal é mais facilmente oxidado: Cu ou Zn?",
		"opcoes": ["Cobre (Cu)", "Zinco (Zn)", "Ambos igualmente", "Nenhum dos dois"],
		"resposta_correta": 1,
		"explicacao": "O zinco é mais facilmente oxidado que o cobre, por isso é usado como ânodo em muitas pilhas.",
		"dano": 20
	},
	{
		"pergunta": "Na eletrólise de NaCl em solução aquosa, qual é o principal produto no ânodo?",
		"opcoes": ["Cloro (Cl₂)", "Oxigênio (O₂)", "Sódio (Na)", "Hidrogênio (H₂)"],
		"resposta_correta": 0,
		"explicacao": "Na eletrólise de NaCl aquoso, forma-se cloro no ânodo e hidrogênio no cátodo.",
		"dano": 22
	},
	{
		"pergunta": "Qual é a carga do ânodo em uma pilha galvânica?",
		"opcoes": ["Positiva", "Negativa", "Neutra", "Varia com a reação"],
		"resposta_correta": 0,
		"explicacao": "O ânodo é o eletrodo positivo em uma pilha galvânica.",
		"dano": 18
	},
	{
		"pergunta": "O que é redução?",
		"opcoes": ["Ganho de elétrons", "Perda de elétrons", "Aumento de volume", "Diminuição de temperatura"],
		"resposta_correta": 0,
		"explicacao": "Redução é o ganho de elétrons por uma substância durante uma reação química.",
		"dano": 15
	}
]

func get_random_question():
	return questions[randi() % questions.size()]

func get_question_by_index(index: int):
	if index < questions.size():
		return questions[index]
	return null

func get_total_questions() -> int:
	return questions.size()