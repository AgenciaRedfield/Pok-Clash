# Pok? Royale ?Ys?,?

Um jogo de batalha t?f?tica em tempo real inspirado em Pok? Royale e focado no universo Pok?mon. Desenvolvido com **Vanilla JavaScript**, **Vite** e **Pok?f?API**.

![Pok? Royale Preview](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png)

## ??"? Funcionalidades

- **Batalhas em Tempo Real**: Posicione seus Pok?mon na arena para derrubar as torres do oponente.
- **Batalhas Online (PvP)**: Sistema de Matchmaking real-time com sincroniza?f??f?o de unidades, feiti?f?os e dano em torres.
- **Modo Treino (Bot)**: Pratique suas jogadas contra uma IA inteligente antes de enfrentar outros treinadores.
- **Sistema de Proj?f?teis**: Pok?mon com tipos elementares (Fogo, ?f?gua, etc.) agora atacam ?f? dist?f?ncia com proj?f?teis visuais e mec?f?nicas de trajet?f?ria.
- **Dano em ?f?rea (Splash)**: Pok?mon ?f???picos, Lend?f?rios ou de tipos espec?f?ficos (Fogo, Drag?f?o, Pedra) causam dano em ?f?rea, ideal para limpar hordas.
- **Vantagem de Tipos**: Sistema de fraquezas e resist?f?ncias cl?f?ssico de Pok?mon integrado ao dano (ex: ?f?gua > Fogo).
- **Sistema de "Juice" & VFX**: Screen shake (tremor de tela), Impact Flash, e Floating Combat Text (n?f?meros de dano flutuantes) para uma experi?f?ncia visceral.
- **F?f?sica de Tropas**: Sistema de anti-colis?f?o e agrupamento que impede que unidades se sobreponham, garantindo uma forma?f??f?o de batalha natural.
- **Deploy Autom?f?tico**: Tempo de invoca?f??f?o de 1 segundo com feedback visual (unidades desbotadas) antes de entrarem na a?f??f?o.
- **Sistema de Deck & Evolu?f??f?o**: Monte um deck de 8 cartas e evolua seus Pok?mon usando Moedas e Doces da Pok?f?API.
- **Progress?f?o do Treinador**: Conquiste 5 Arenas/Ligas, ganhe Ins?f?gnias e suba de n?f?vel para desbloquear b?f?nus.
- **Dificuldade Balanceada**: Curva de aprendizado suave com IA facilitada para iniciantes na primeira Arena.

## ?Y????? Tecnologias Utilizadas

- **Frontend**: HTML5, Vanilla CSS, JavaScript (ES6+).
- **Backend**: [Supabase](https://supabase.com/) para dados persistentes (perfis, ranking) e sistema Real-Time (matchmaking, sincroniza?f??f?o PvP).
- **Tooling**: [Vite](https://vitejs.dev/) para desenvolvimento e build.
- **API**: [Pok?f?API](https://pokeapi.co/) para dados e sprites de Pok?mon.
- **?f?cones**: Font Awesome.

## ?Ys?,? Como Executar Localmente

1. Clone o reposit?f?rio:
   ```bash
   git clone https://github.com/seu-usuario/poke-royale.git
   ```
2. Instale as depend?f?ncias:
   ```bash
   npm install
   ```
3. Inicie o servidor de desenvolvimento:
   ```bash
   npm run dev
   ```
4. Abra o navegador em `http://localhost:5173`.

## ?Y?'? Deploy na Vercel

Este projeto est?f? pronto para ser hospedado na Vercel. 

1. Conecte seu reposit?f?rio GitHub ?f? Vercel.
2. Certifique-se de que o comando de Build seja `npm run build` e o diret?f?rio de sa?f?da seja `dist`.
3. Clique em **Deploy** e pronto!

## ?Y??o?" Licen?f?a

Este projeto ?f? para fins educacionais. Os ativos de Pok?mon s?f?o propriedade da Nintendo/The Pok?mon Company.


