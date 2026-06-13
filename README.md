# ⚛️ Eletroquímica RPG

Um jogo educativo em RPG para ensino de **eletroquímica** em dispositivos móveis.

## 🎮 Gameplay

- **Combate por Desafios**: Enfrente inimigos respondendo perguntas sobre eletroquímica
- **Sistema de HP**: Acertos causam dano ao inimigo; erros reduzem seu HP
- **Banco de Questões**: Perguntas sobre pilhas galvânicas, eletrólise, oxidação-redução
- **Progressão**: Derrote inimigos para avançar de nível

## 🔧 Tecnologia

- **Engine**: Godot 4.0+
- **Linguagem**: GDScript
- **Plataforma**: Mobile (Android/iOS)

## 📁 Estrutura do Projeto

```
├── src/
│   ├── Game.gd           # Sistema principal do jogo
│   ├── CombatSystem.gd   # Lógica de combate
│   └── QuestionBank.gd   # Banco de questões
├── scenes/
│   ├── MainMenu.tscn     # Tela inicial
│   ├── MainMenu.gd       # Scripts do menu
│   ├── Combat.tscn       # Cena de combate
│   └── Combat.gd         # Scripts de combate
└── project.godot         # Configuração do projeto
```

## 🚀 Como Usar

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/phangomes123-maker/eletroquimica-rpg.git
   ```

2. **Abra no Godot**:
   - Baixe [Godot 4.0+](https://godotengine.org/)
   - Clique em "Open" e selecione a pasta do projeto

3. **Execute**:
   - Pressione F5 ou clique em "Play"

## 📚 Tópicos Abordados

- ✅ Eletrólise de água
- ✅ Pilhas galvânicas (Daniell)
- ✅ Oxidação e Redução
- ✅ Ânodo e Cátodo
- ✅ Eletrólise de NaCl

## 🎯 Próximas Funcionalidades

- [ ] Mais níveis e inimigos
- [ ] Sistema de itens/equipamentos
- [ ] Cutscenes narrativas
- [ ] Leaderboard de pontos
- [ ] Modo de prática (sem combate)

## 📝 Licença

MIT License - Sinta-se livre para usar e modificar!