<p align="center">
	<img width="200" alt="Godot" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Godot_icon.svg/2048px-Godot_icon.svg.png">
</p>

<h1 align="center">Origin of Tomorrow - Uma Visual Novel feita na Godot</h1>

<p align="center">
	<img width="600" 
		alt="Origin of Tomorrow - tela artes e primeiras escolhas"
		src="https://i.imgur.com/wADTXCi.png">
</p>

## Introdução

Projeto realizado como parte da grade curricular da disciplina de Engenharia de Conhecimento, ministrado no curso de Engenharia de Software do Centro Universitário Católica do Tocantins.

O principal objetivo do trabalho  é a implementação dos conceitos de Banco de Dados numa aplicação. No caso do nosso grupo, escolhemos fazer a implementação a partir de um jogo de texto Visual Novel, com o objetivo de alimentar o banco de dados com informações do usuário.

Visual novel é um gênero de jogo focado em leituras de textos, cuja suas decisões afetam o rumo da história. O sistema terá como proposta utilizar um sistema de bancos de dados par analisar as decisões dos jogadores para comparar os caminhos traçados por cada um ao decorrer da história.


Como base para o trabalho, partiu-se dos conceitos de interação e escolhas nos adventures criados pela empresa Telltale Games, responsáveis por jogos como The Walking Dead Season 1 & 2, The Wolf Among Us e The Batman Telltale series.


## Funcionalidades

1. Implementação do Firebase como aplicação de gerenciamento de dados e informações emitidas pela aplicação.

2. Sistema de diálogo, cujo os jogadores terão a possibilidade de ler a narrativa e as fala dos personagens durante a história por intermédio de uma caixa de diálogo;

3. Sistemas de decisões que serão armazenadas no Banco de Dados e mostradas como estátisticas para o jogador ao final do jogo, demonstrando o seu  desempenho e progressão comparadas aos outros jogadores;

4. História voltada ao universo dos jogos eletrônicos, tendo alguns mini-games como interação e progresso da história

5. Galeria de pixel-arts dos desenhos criados pelo artista do projeto. Estas artes serão desbloqueadas pelo jogador à medida em que ele vai avançando durante a história

6. Sons e efeitos sonoros para maior imersão do jogador.

7. Sistemas de criação de perfis do usuário/jogador, delimitando preferências e escolhas pessoais determinadas que podem aparecer/afetar a história ao decorrer do jogo;


## Possíveis funcionalidades e que estão fora do escopo

1. Portabilidade da aplicação para dispositivos móveis e consoles de videogame.
2. Sub-aplicação móvel para votação. Voltada para espectadores que estão assistindo a transmissão e estão buscando interação com o streamer favorito.
3. Sistemas de criação de perfis do usuário/jogador, delimitando preferências e escolhas pessoais determinadas que podem aparecer/afetar a história ao decorrer do jogo. A implementação da funcionalidade pode ser feita como base a interação proposta no ínicio do jogo Silent Hill Shattered Memories. Check-list da personalidade do jogador, mudando alguns elementos e personagens da história;

## Fluxograma das funcionalidades

<p align="center">
	<img width="600"
		alt="Fluxograma do Firebase e escolhas do jogo"
		src="https://i.imgur.com/Y1s0nMq.png">
		<br>Fluxograma Geral das funcionalidades da aplicação
</p>

<p align="center">
	<img width="600"
		alt="Fluxograma da página de login"
		src="https://i.imgur.com/fGLKb95.png">
		<br>Fluxograma da página de login e senha
</p>

<p>

<p align="center">
	<img width="600"
		alt="Exemplificação do sistema de escolhas do jogo, por intermédio de condicionais/nested condicionais"
		src="https://i.imgur.com/CD905bI.png">
		<br>Exemplificação do sistema de escolhas do jogo
</p>

<p align="center">
	  <img width="600"
	       alt="Fluxograma do modelo lógico"
	       src="https://i.imgur.com/YDGCaDl.png">
	       <br>Fluxograma do modelo lógico do banco de dados
</p>


## Ferramentas utilizadas

1. O Godot é um motor de jogo de código aberto, publicado utilizando a licença MIT e desenvolvido pela sua própria comunidade. Seu design é inovador, utilizando um sistema de nódulos e de cena, dando flexibilidade para o desenvolvedor criar qualquer coisa. Pode ser usada em qualquer plataforma de desenvolvimento moderno, tendo a engine suporte para os sistemas operacionais Linux, MacOs, Windows Android. 

2. O Dialogic é uma extensão da Godot responsável em facilitar a adição de diálogos no seu jogo. Ela é uma aplicação feita dentro da própria, tendo como base ferramentas com interface gráfica para organização de diálogos dentro do jogo. 

3. Krita é uma ferramenta de criação de ilustrações, concept art, histórias em quadrinhos, pinturas digitais e animações, também podendo ser usado como um programa de retoques e manipulação de fotografia, conversor de formatos, suportando vários modelos de cores e pintura HDR. 

4. O Firebase é um conjunto de serviços de hospedagem para qualquer tipo de aplicativo. Oferece hospedagem NoSQL e em tempo real de bancos de dados, conteúdo, autenticação social e notificações, ou serviços, como um servidor de comunicação em tempo real.

## Instalação

Origin of Tomorrow pode ser executado em diversos sistemas como Windows, Linux e até mesmo em <strong> navegadores de internet</strong>. 

Binários compilados podem ser baixados na página de [releases do GitHub](https://github.com/gabriel-aires09/origintomorow/releases).

Quanto ao uso da aplicação em <strong>navegadores</strong>, é recomendável utilizar o editor de texto [Visual Studio Code](https://code.visualstudio.com/), juntamente com a extensão [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer). O jogo não consegue rodar abrindo automaticamente a página HTML, necessitando a criação de um servidor local. 

Os arquivos do código fonte podem ser executados utilizando a própria engine [Godot](https://godotengine.org/). Necessário apenas a [importação dos arquivos do projeto](https://docs.godotengine.org/en/latest/tutorials/editor/project_manager.html#opening-and-importing-projects), abrir e apertar o botão play ao canto da tela da interface gráfica da Godot engine. 



