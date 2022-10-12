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

Projeto realizado como parte da grade curricular da disciplina de Engenharia de Conhecimento, ministrado no curso de [Engenharia de Software](https://to.catolica.edu.br/portal/curso/engenharia-de-software/) do [Centro Universitário Católica do Tocantins](https://to.catolica.edu.br/portal/).

O principal objetivo do trabalho  é a implementação dos conceitos de Banco de Dados numa aplicação. No caso do nosso grupo, escolhemos fazer a implementação a partir de um jogo de texto Visual Novel, com o objetivo de alimentar o banco de dados com informações do usuário.

Visual novel é um gênero de jogo focado em leituras de textos, cuja suas decisões afetam o rumo da história. O sistema terá como proposta utilizar um sistema de bancos de dados par analisar as decisões dos jogadores para comparar os caminhos traçados por cada um ao decorrer da história.


Como base para o trabalho, partiu-se dos conceitos de interação e escolhas nos adventures criados pela empresa [Telltale Games](https://telltale.com/), responsáveis por jogos como [The Walking Dead Series](https://store.steampowered.com/app/1449690/The_Walking_Dead_The_Telltale_Definitive_Series/), [The Wolf Among Us](https://store.steampowered.com/app/250320/The_Wolf_Among_Us/) e [The Batman Telltale series](https://store.steampowered.com/app/498240/Batman__The_Telltale_Series/).


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
		alt="Fluxograma da página de login"
		src="https://i.imgur.com/fGLKb95.png">
		<br>Fluxograma da página de login e senha
</p>

<p align="center">
	<img width="600"
		alt="Exemplificação do sistema de escolhas do jogo, por intermédio de condicionais/nested condicionais"
		src="https://i.imgur.com/CD905bI.png">
		<br>Exemplificação do sistema de escolhas do jogo
</p>

## Ferramentas utilizadas

1. [Godot](https://godotengine.org/) é um motor de jogo de código aberto, publicado utilizando a licença MIT e desenvolvido pela sua própria comunidade. Seu design é inovador, utilizando um sistema de nódulos e de cena, dando flexibilidade para o desenvolvedor criar qualquer coisa. Pode ser usada em qualquer plataforma de desenvolvimento moderno, tendo a engine suporte para os sistemas operacionais Linux, MacOs, Windows Android. 

2. [Dialogic](https://github.com/coppolaemilio/dialogic) é uma extensão da Godot responsável em facilitar a adição de diálogos no seu jogo. Ela é uma aplicação feita dentro da própria, tendo como base ferramentas com interface gráfica para organização de diálogos dentro do jogo. 

3. [Krita](https://krita.org/en/) é uma ferramenta de criação de ilustrações, concept art, histórias em quadrinhos, pinturas digitais e animações, também podendo ser usado como um programa de retoques e manipulação de fotografia, conversor de formatos, suportando vários modelos de cores e pintura HDR. 

4. [Firebase](https://firebase.google.com/?hl=pt) é um conjunto de serviços de hospedagem para qualquer tipo de aplicativo. Oferece hospedagem NoSQL e em tempo real de bancos de dados, conteúdo, autenticação social e notificações, ou serviços, como um servidor de comunicação em tempo real.

## Configurações do Projeto

Origin of Tomorrow pode ser executado em diversos sistemas como Windows, Linux e até mesmo em <strong> navegadores de internet</strong>. 

Binários compilados podem ser baixados na página de [releases do GitHub](https://github.com/gabriel-aires09/origintomorow/releases). Necessário apenas descompactar os arquivos e rodar diretamente no sistema. O executável e o arquivo de extensão .pck devem estar localizados no mesmo diretório. Sem isso, o jogo não será executado. 


Quanto ao uso da aplicação em <strong>navegadores</strong>, você pode acessar ao jogo por meio deste link: [Github Pages](https://gabriel-aires09.github.io/origintomorow/). Criamos uma branch própria hospedada no Github Pages para acesso e conhecimentos das pessoas que tenham interesse em acessar ao jogo. Todos os novos recursos, mecânicas e funcionalidades serão também atualizadas neste link. Nossa intenção é apresentar nossas ideias, de maneira acessível, para outras pessoas interessadas no projeto.

Os arquivos do código fonte podem ser executados utilizando a própria engine [Godot](https://godotengine.org/). Necessário apenas a [importação dos arquivos do projeto](https://docs.godotengine.org/en/latest/tutorials/editor/project_manager.html#opening-and-importing-projects), abrir e apertar o botão play ao canto da tela da interface gráfica da Godot engine. 

### Tutorial para rodar o projeto na Godot Engine

Abaixo, o tutorial passo a passo:

Abra o aplicativo da Godot. A primeira inicialização irá pedir para adicionar assets. É opcional, mas recomendamos apertar o botão Cancel/Cancelar.

#### 1. Na tela de gerenciamento de projetos, aperte o botão Import

<p align="left">
	<img width="600"
		alt="Tela de gerenciamento do projeto"
		src="https://i.imgur.com/onAIBTu.png">
</p>

#### 2. Selecione o arquivo "project.godot" na janela Open a File/Abrir Arquivo
<p align="left">
	<img width="600"
		alt="Open a File/Abrir Arquivo"
		src="https://i.imgur.com/yTT2Fw9.png">
</p>

#### 3. Na janela de importar arquivo, selecione a opção Import & Edit
<p align="left">
	<img width="600"
		alt="Importar arquivo"
		src="https://i.imgur.com/YoNSQc5.png">
</p>

#### 4. Ao canto da tela da Godot Engine, aperte o ícone play.
<p align="left">
	<img width="600"
		alt="Godot e play"
		src="https://i.imgur.com/Z6xNMJ3.png">
</p>

#### 5. A cena principal será inicializada, juntamente com as demais
<p align="left">
	<img width="600"
		alt="Importar arquivo"
		src="https://i.imgur.com/NkmXbuw.png">
</p>

## Rotas

<p align="center">
	<img width="600"
		alt="Fluxograma do Firebase e escolhas do jogo"
		src="https://i.imgur.com/Y1s0nMq.png">
		<br>Fluxograma Geral das funcionalidades da aplicação
</p>
	Ao acessar o jogo, o jogador irá se deparar com uma tela apresentando as opções de login e cadastro, onde os dados cadastrados pelo usuário serão armazenados no banco de dados em nuvem. O menu inicial dá ao usuário três opções sendo elas start, galeria e quit, cuja opção start possui função de iniciar jogo. Cada opção a qual o jogador escolher será armazenada em nuvem, sendo enviada novamente ao jogador ao final dos capítulos em forma de estatísticas, juntamente com as outros jogadores.  

## Modelagem do banco de dados

Modelo lógico

<p align="center">
	  <img width="600"
	       alt="Fluxograma do modelo lógico"
	       src="https://i.imgur.com/HKGmoh8.png">
	       <br>Fluxograma do modelo lógico do banco de dados
</p>

Criação do Banco de Dados

## Colaboradores

<p align="left">
	<img width="100"
	     	align="left"
		alt="Gabriel"
		src="https://i.imgur.com/4b3eRBA.png"
		<br><br>
		Sou Gabriel Aires, natural de Palmas (TO). Tenho como paixões jogar videogame, codar e ler. Pseudo advogado frustado que resolveu migrar para TI, porque mexer com PC é melhor do que lidar com gente.
		<br><strong>Codificação, Documentação e Ideias</strong>
</p>

<br>

<p align="left">
	<img width="100"
	     	align="left"
		alt="Jonathan"
		src="https://i.imgur.com/Dek9BJr.png"
		<br><br>
		Sou Jonathan Rodrigues. Atualmente, estudo Engenharia de Software na faculdade Unicatolica do Tocantins. Tenho como paixões desenhar, jogar videogame, colocar o headphone no talo e programar.
		<br><strong>Arte, Roteiro e Documentação</strong>
</p>

<br>

<p align="left">
	<img width="100"
	     	align="left"
		alt="Mateus a lenda"
		src="https://i.imgur.com/utVksoZ.png"
		<br><br>
		Sou Mateus Citriniti Emilio. Atualmente, estudo Engenharia de software no Centro Universitário Católica do Tocantins. Tenho como paixões jogar, programar e assistir animes. Profissional certificado em ficar o dia inteiro sentado na frente do PC.
		<br><strong>Codificação, Documentação e Ideias</strong>
</p>

<br>

## Fontes de pesquisa

[Godot documentation](https://docs.godotengine.org/en/stable/)
<br>[GDQuest - Login with Firebase in Godot 3.1 (tutorial)](https://www.youtube.com/watch?v=Udm7uDQM05w)
<br>[Gamesfromscratch - Dialogic -- Powerful New Dialog Add-On For Godot](https://www.youtube.com/watch?v=QXm0L-QSXoQ)
<br>[Emi - Getting Started With Dialogic](https://www.youtube.com/watch?v=sYjgDIgD7AY)
