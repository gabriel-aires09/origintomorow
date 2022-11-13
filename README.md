<p align="center">
	<img width="200" alt="Godot" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Godot_icon.svg/2048px-Godot_icon.svg.png">
</p>

<h1 align="center">Origin of Tomorrow - Uma Visual Novel feita na Godot</h1>

<p align="center">
	<img width="600" 
		alt="Origin of Tomorrow - tela artes e primeiras escolhas"
		src="https://i.imgur.com/wADTXCi.png">
</p>

## A2 - Sprint 1

<details> 
	<summary><h3>Introdução</h3></summary>

<p>Projeto realizado como parte da grade curricular da disciplina de Engenharia de Conhecimento, ministrado no curso de <a href="https://to.catolica.edu.br/portal/curso/engenharia-de-software/">Engenharia de Software</a> do <a href="https://to.catolica.edu.br">Centro Universitário Católica do Tocantins</a>.</p>

<p>O principal objetivo do trabalho  é a implementação dos conceitos de Banco de Dados numa aplicação. No caso do nosso grupo, escolhemos fazer a implementação a partir de um jogo de texto Visual Novel, com o objetivo de alimentar o banco de dados com informações do usuário.</p>


<p>Visual novel é um gênero de jogo focado em leituras de textos, cuja suas decisões afetam o rumo da história. O sistema terá como proposta utilizar um sistema de bancos de dados par analisar as decisões dos jogadores para comparar os caminhos traçados por cada um ao decorrer da história.</p>

<p>Como base para o trabalho, partiu-se dos conceitos de interação e escolhas nos adventures criados pela empresa <a href="https://telltale.com/">Telltale Games</a>, responsáveis por jogos como <a href="https://store.steampowered.com/app/1449690/The_Walking_Dead_The_Telltale_Definitive_Series/">The Walking Dead </a>, <a href="https://store.steampowered.com/app/250320/The_Wolf_Among_Us/">The Wolf Among Us</a> e <a href="https://store.steampowered.com/app/498240/Batman__The_Telltale_Series/">The Batman Telltale series</a>.</p>
</details>

<details>
	<summary><h3>Funcionalidades</h3></summary>

<ol>
	<li>Implementação do Firebase como aplicação de gerenciamento de dados e informações emitidas pela aplicação;</li>
	<li>Sistema de diálogo, cujo os jogadores terão a possibilidade de ler a narrativa e as fala dos personagens durante a história por intermédio de uma caixa de diálogo;</li>
	<li>Sistemas de decisões que serão armazenadas no Banco de Dados e mostradas como estátisticas para o jogador ao final do jogo, demonstrando o seu  desempenho e progressão comparadas aos outros jogadores;</li>
	<li>História voltada ao universo dos jogos eletrônicos, tendo alguns mini-games como interação e progresso da história;</li>
	<li>Galeria de pixel-arts dos desenhos criados pelo artista do projeto. Estas artes serão desbloqueadas pelo jogador à medida em que ele vai avançando durante a história;</li>
	<li>Sons e efeitos sonoros para maior imersão do jogador;</li>
	<li>Sistemas de criação de perfis do usuário/jogador, delimitando preferências e escolhas pessoais determinadas que podem aparecer/afetar a história ao decorrer do jogo.</li>
</ol>
</details>

<details>
	<summary><h3>Possíveis funcionalidades e que estão fora do escopo</h3></summary>
<ol>
	<li>Portabilidade da aplicação para dispositivos móveis e consoles de videogame.</li>
	<li>Sub-aplicação móvel para votação. Voltada para espectadores que estão assistindo a transmissão e estão buscando interação com o streamer favorito.</li>
	<li>Sistemas de criação de perfis do usuário/jogador, delimitando preferências e escolhas pessoais determinadas que podem aparecer/afetar a história ao decorrer do jogo. A implementação da funcionalidade pode ser feita como base a interação proposta no ínicio do jogo Silent Hill Shattered Memories. Check-list da personalidade do jogador, mudando alguns elementos e personagens da história</li>
</ol>
</details>

<details>
	<summary><h3>Fluxograma das funcionalidades</h3></summary>

<p>Primeiro, o jogador terá como tela inicial de registro e login do jogo, fazendo a comunicação entre aplicação e banco de dados/servidor Firebase. Estas informações serão armazenadas no banco de dados, criando uma identificação/chave primária própria. Existe um cenário/interação para verificação se os dados dos usuários estiverem corretos.</p>

<ul>
	<li>Caso o email já esteja cadastrado, o jogador já pode pular para tela de login e digitar os seus dados;</li>
	<ul>
		<li>Se os dados estiverem corretos, vai aparecer uma mensagem de login bem sucedido, avançando para o menu do jogo;</li> 
		<li>Caso os dados não estiverem corretos, vai aparecer uma mensagem de erro do usuário ou senha digitada incorretamente, solicitando novamente a autenticação.</li>
	</ul>
</ul>

<br> 

<p align="center">
	<img width="600"
		alt="Fluxograma da página de login"
		src="https://i.imgur.com/cQPXj1B.png">
		<br>Fluxograma da página de login e senha
</p>

<p>Segundo, o jogador interage com as escolhas estipuladas do jogo. Ao fazer isso, cada uma dessas escolhas terá uma saída  ou rumo diferente para a história. Podem ser diálogos e interações com os personagens diferentes do habitual ou segmento da história. Exemplo: determinado personagem pode morrer ou continuar na narrativa, desempenhando outro papel. Diante disso, cada uma dessas escolhas e caminhos serão armazenadas no banco de Dados, diferenciando cada uma dessas rotas selecionadas pelo jogador. Ao final do jogo, o jogador terá uma tela de estatísticas, comparando o seu desempenho com outros jogadores.</p>
 
<p>Exemplo: </p>

<ul>
	<li>O jogador A traçou o caminho X.</li> 
	<ul>
		<li>Porcentagem de jogadores que seguiram este caminho 56%.</li>
	</ul> 
	<li>Outros jogadores que seguiram o caminho Y.</li>
	<ul>
		<li>Porcentagem: 44%</li>
	</ul>
</ul> 

<p>Vale ressaltar que, as escolhas principais, ao decorrer da trama, serão apresentadas nas estatísticas, para entender como funciona o sistema por parte do jogador e quais interações futuras podem ser possíveis para acessar os outros finais do jogo.</p>

<br>

<p align="center">
	<img width="600"
		alt="Exemplificação do sistema de escolhas do jogo, por intermédio de condicionais/nested condicionais"
		src="https://i.imgur.com/CD905bI.png">
		<br>Exemplificação do sistema de escolhas do jogo
</p>

</details>

<details>
	<summary><h3>Ferramentas utilizadas</h3></summary>

1. [Godot](https://godotengine.org/) é um motor de jogo de código aberto, publicado utilizando a licença MIT e desenvolvido pela sua própria comunidade. Seu design é inovador, utilizando um sistema de nódulos e de cena, dando flexibilidade para o desenvolvedor criar qualquer coisa. Pode ser usada em qualquer plataforma de desenvolvimento moderno, tendo a engine suporte para os sistemas operacionais Linux, MacOs, Windows Android. 

2. [Dialogic](https://github.com/coppolaemilio/dialogic) é uma extensão da Godot responsável em facilitar a adição de diálogos no seu jogo. Ela é uma aplicação feita dentro da própria, tendo como base ferramentas com interface gráfica para organização de diálogos dentro do jogo. 

3. [Krita](https://krita.org/en/) é uma ferramenta de criação de ilustrações, concept art, histórias em quadrinhos, pinturas digitais e animações, também podendo ser usado como um programa de retoques e manipulação de fotografia, conversor de formatos, suportando vários modelos de cores e pintura HDR. 

4. [Firebase](https://firebase.google.com/?hl=pt) é um conjunto de serviços de hospedagem para qualquer tipo de aplicativo. Oferece hospedagem NoSQL e em tempo real de bancos de dados, conteúdo, autenticação social e notificações, ou serviços, como um servidor de comunicação em tempo real.

5. [Fruity Loop Studio](https://www.image-line.com/fl-studio/) é uma estação de trabalho de áudio digital desenvolvido pela empresa belga Image-Line. Atualmente é um dos softwares mais usados em produções musicais no mundo, ficando em 4° lugar com 13.63%. Em 2018 foi considerado o melhor DAW do ano pelo IDMA.

6. [Obs Studio](https://obsproject.com/pt-br/download) é uma suíte de software livre e de código aberto para gravação e transmissão ao vivo. Escrito em C e C++, o OBS fornece captura de fonte e dispositivo em tempo real, composição de cena, codificação, gravação e transmissão. A transmissão de dados é feita principalmente através do RTMP (Real Time Messaging Protocol) e pode ser enviada para qualquer destino de suporte RTMP, incluindo muitas predefinições para sites de streaming, como YouTube, Instagram, Twitch e Facebook.

</details>

<details>
	<summary><h3>Configurações do Projeto</h3></summary>

<p>Origin of Tomorrow pode ser executado em diversos sistemas como Windows, Linux e até mesmo em <strong> navegadores de internet</strong>. </p>

Binários compilados podem ser baixados na página de [releases do GitHub](https://github.com/gabriel-aires09/origintomorow/releases). Necessário apenas descompactar os arquivos e rodar diretamente no sistema. O executável e o arquivo de extensão .pck devem estar localizados no mesmo diretório. Sem isso, o jogo não será executado.

Quanto ao uso da aplicação em <strong>navegadores</strong>, você pode acessar ao jogo por meio deste link: [Github Pages](https://gabriel-aires09.github.io/origintomorow/). Criamos uma branch própria hospedada no Github Pages para acesso e conhecimentos das pessoas que tenham interesse em acessar ao jogo. Todos os novos recursos, mecânicas e funcionalidades serão também atualizadas neste link. Nossa intenção é apresentar nossas ideias, de maneira acessível, para outras pessoas interessadas no projeto.

Os arquivos do código fonte podem ser executados utilizando a própria engine [Godot](https://godotengine.org/). Necessário apenas a [importação dos arquivos do projeto](https://docs.godotengine.org/en/latest/tutorials/editor/project_manager.html#opening-and-importing-projects), abrir e apertar o botão play ao canto da tela da interface gráfica da Godot engine. 

</details>

<details>
	<summary><h3>Tutorial para rodar o projeto na Godot Engine</h3></summary>

Abaixo, o tutorial passo a passo:

Abra o aplicativo da Godot. A primeira inicialização irá pedir para adicionar assets. É opcional, mas recomendamos apertar o botão Cancel/Cancelar.

#### 1. Na tela de gerenciamento de projetos, aperte o botão Import

#### 2. Selecione o arquivo "project.godot" na janela Open a File/Abrir Arquivo

#### 3. Na janela de importar arquivo, selecione a opção Import & Edit

#### 4. Ao canto da tela da Godot Engine, aperte o ícone play.

#### 5. A cena principal será inicializada, juntamente com as demais

https://user-images.githubusercontent.com/90778217/195465148-2cbacfbf-9149-4709-bafb-80ddd5c36f2d.mp4


### Tutorial para rodar o projeto no Visual Studio Code

Caso você tenha interesse em conferir a versão para navegadores e acessar/editar o código fonte, faça o download da versão HTML + Javascript na página de [releases](https://github.com/gabriel-aires09/origintomorow/releases/tag/v0.1b). Baixe o arquivo [Origin_of_Tomorrow_Browser.zip](https://github.com/gabriel-aires09/origintomorow/releases/download/v0.1b/Origin_of_Tomorrow_Browser.zip). Caso tenha interesse em rodar aplicação para verificar as modificações, baixe a extensão Live Server do Visual Studio Code. 

Abaixo, um pequeno tutorial em vídeo de como pode ser feito este procedimento.

https://user-images.githubusercontent.com/90778217/195740843-746e6f9d-6960-4bfd-9436-a5dfde40e185.mp4

</details>


<details> 
	<summary><h3>Rotas</h3></summary>

<p align="left">
	<img width="1506" height="334"
		alt="Fluxograma do Firebase e escolhas do jogo"
		src="https://i.imgur.com/Y1s0nMq.png">
</p>
<p align="center">Fluxograma Geral das funcionalidades da aplicação</p>

Ao acessar o jogo, o jogador irá se deparar com uma tela apresentando as opções de login e cadastro, onde os dados cadastrados pelo usuário serão armazenados no banco de dados em nuvem. O cadastro ocorre dentro do próprio jogo, assim como o login, que quando efetuado, o menu inicial é apresentado, exibindo ao usuário as opções de start, galeria e quit, cuja opção start possui função de iniciar jogo.

Cada escolha a qual o jogador selecionar será armazenada no firebase, sendo enviada novamente ao jogador ao final dos capítulos em forma de estatísticas, juntamente com as outros jogadores, sendo exibidas de forma comparativa. As médias a serem exibidas são geradas através da média de escolhas feitas por todos os jogadores. Quando acessada, a galeria exibe todas as artes do jogo, que são mostradas em forma de listas, sendo armazenadas localmente, cujo desbloqueio de imagens, ocorre através do avanço na história ou rota escolhida. 

Abaixo, as rotas/caminhos de acesso que podem ser acessadas aos jogadores neste primeiro protótipo. Os vídeos são interessantes para exemplificar como o sistemas de escolhas serão desenvolvimentosao decorrer do projeto. A primeira e a segunda escolha muda as interações/diálogos entre personagens, como também os sentimentos expressados entre eles - o avatar da personagem Sabrina muda, podendo ficar triste, feliz ou apático, a depender das escolhas geradas pelo jogador. No futuro, os integrantes pretendem criar uma espécie de sistema de pontos de sentimentos que serão exibidas como estatísticas ao final do jogo, conforme consta ao final do vídeo. 
	
### Rota 1 - Primeira escolha do jogo

https://user-images.githubusercontent.com/90778217/195460870-dfe8cddc-d4d2-4802-9faf-dcbda5428594.mp4


## Rota 2 - Segunda escolha do jogo

https://user-images.githubusercontent.com/90778217/195461271-6ae0ad93-40db-4643-a9cb-fe39b158ae0d.mp4

</details>


<details>
	<summary><h3>Modelagem do banco de dados</h3></summary>

Diante das funcionalidades e sistemas utilizados para o nosso projeto, optamos por um gerenciamento de banco de dados não relacional (NoSQL). Primeiramente, o motivo para utilizar esta estrutura de banco de dados é a sua característica de mutabilidade durante o processo de desenvolvimento da aplicação. Queremos, na medida que surgem novas ideias entre os integrantes do projeto, modificar a manipulação dos dados na nossa aplicação, não necessariamente atendendo uma estrutura pré-definida. Segundo, adotamos o Firebase como aplicação principal para o gerenciamento de dados e informações do nosso jogo. Percebemos que, ao analisar o contexto e, pelo tempo exigido para desenvolvimento da aplicação, o melhor caminho a ser seguido seria a utilização do Firebase, principalmente por causa da facilidade de implementação e praticidade de utilização na nossa aplicação. Terceiro, porque a nossa própria orientadora apresentou como uma das ferramentas que podem ser utilizadas durante o processo de desenvolvimento. :smile:

Abaixo, o modelo lógico estruturado do nosso banco de dados, como também a representação de tabelas do Dialogic repassadas para o RealTime Database e o gerenciamento de emails/cadastros registrados no Firebase para teste da aplicação.

<p align="center">
	  <img width="600"
	       alt="Fluxograma do modelo lógico"
	       src="https://i.imgur.com/HKGmoh8.png">
	       <br>Fluxograma do modelo lógico do banco de dados
</p>

<p align="center">
	<img width="600"
		alt="Representação das escolhas do jogador no Firebase"
		src="https://i.imgur.com/q2L1JAo.jpg"
		<br><br>Representação das escolhas feitas do jogador, mostrando chave primária e os objetos/propriedades definidas. Algumas das escolhas serão armazenadas por aqui.
</p>

<p align="center">
	<img width="600"
		alt="Usuários cadastrados no jogo e registrados no Firebase"
		src="https://i.imgur.com/y7Y2Kz0.png"
		<br><br>Página de autenticação do Firebase, demonstrando os usuários cadastrados e registrados no banco de dados
</p>

<p align="center">
	<img width="600"
		alt="Estrutura da tabela da timeline criada pela Dialogic"
		src="https://i.imgur.com/o8ww56j.png"
		<br><br>Estrutura da tabela do arquivo .json criado pelo Dialogic. 
</p>

</details>

## A2 - Sprint 2

<details>
<summary><h3>Padronização e permissão de rotas</h3></summary>

Não há diferentes tipos de usuários, sendo que as rotas serão igualmente distribuídas. Quando o usuário se registra, seus dados são salvos na nuvem juntamente com um token gerado pelo Firebase, cuja utilização se dará na autenticação de usuário. O jogo apresenta as seguintes rotas: 
### Iniciar
Sendo a primeira rota a qual o usuário utitizará, ele terá acesso ao conteúdo jogável


<h3 align="center">{Main}/{Register{token_criado}}/{Login{token_autenticado}}/{Menu}/{Supercene{dialogic}} </h3>


Após ela, o usuário frequentemente passará pela seguinte rota:


<h3 align="center">{Main}/{Login{token_autenticado}}/{Menu}/{Supercene{dialogic}}</h3>

</details>

<details>
	<summary><h3>Histórias de usuário</h3></summary>

#### US01 - Registro

Eu, como jogador, desejo registrar uma conta no sistema, para que eu possa ter acesso ao jogo.

<strong>Cenário 1: Primeiro registro no jogo</strong>
- Dado que o usuário não tenha uma conta
	- E queira iniciar o jogo
- Quando ele selecionar o opção registro
	- E preenche os dados email, senha, confirmar senha. 
- Então, o sistema retorna uma confirmação
 	- E o jogador é levado para a tela inicial

<strong>Cenário 2: Usuário já cadastrado no sistema</strong>
- Dado que usuário tenha uma conta
	- E queira registrar, utilizando o mesmo login e senha já armazenado no banco de dados da aplicação
- Quando ela tentar registrar no sistema
- Então, vai aparecer uma mensagem de email e usuário já cadastrados no sistema 

<strong>Cenário 3: Domínio de email não reconhecido no sistema</strong>
- Dado que o usuário não tenha uma conta
	- E queira registrar para inicializar/testar o jogo
- Quando selecionar a opção registrar
	- E preencher os dados de email
	- E este domínio de email não ser permitido/reconhecido no sistema de banco de dados
- Então o sistema retorna a seguinte mensagem: domínio de email não reconhecido pelo sistema

<strong>Cenário 4: Senha fraca</strong>
- Dado que o usuário estiver preenchendo os dados do cadastro
	- E a senha possuir menos que seis caracteres
	- OU senha sem caracteres especiais como números, símbolos e letras maiúsculas 
- Quando o usuário apertar o botão de registrar
- Então o sistema retorna um erro
	- E pede para o usuário tentar outra senha novamente

#### US02 - Acesso ao sistema, por meio de login (email) e senha

Eu, como jogador, desejo acessar o sistema, para que eu possa retornar o jogo.

<strong>Cenário 1: Usuário já Registrado no sistema</strong>
- Dado que o usuário estiver cadastrado no sistema
- Quando ele digitar seu email de login
	- E sua senha
- Então,  vai aparecer uma mensagem de login bem sucedido
	- E o usuário irá avançar para o menu do jogo

<strong>Cenário 2: Usuário não registrado no sistema</strong>
- Dado que o usuário não estiver cadastrado no sistema
- Quando ele digitar seu email de login
	- E sua senha
- Então, irá aparecer a mensagem de usuário e senha não cadastrados
	- OU usuário e senha digitados incorretamente


<strong>Cenário 3: Senha incorreta</strong>
- Dado que o usuário tenha uma conta registrada
- Quando ele digita seu login e senha
- E sua senha estiver incorreta
- Então, vai aparecer uma mensagem de login bem sucedido
- E o usuário irá avança para o menu do jogo

#### US03 – Sistema de decisões

Eu, como jogador, desejo escolher que escolhas tomar durante a história, para que possa ver como minhas decisões afetaram a história no geral

<strong>Cenário 1: Escolhas ao decorrer da história</strong>
- Dado que o usuário esteja jogando
	- E apareça duas ou mais opções de escolha
- Quando o jogador seleciona uma das duas opções
- Então, a escolha que o jogador tomou será salva
	- E a história do jogo avança de acordo com a opção escolhida
	- E os elementos e personagens podem mudar, a depender do contexto e escolhas apresentadas na história

<strong>Cenário 2: Escolhas que caracterizam o perfil do jogador</strong>
- Dado que o jogador esteja jogando
	- E tenha preenchido o formulário de perfil do jogo
- Quando o jogador avança ao decorrer da história
- Então, os elementos, tais como cor e nome, serão apresentados nos diálogos
	- E novas interações serão apresentadas

#### US04 - Sistema de relacionamento 

Eu, como desenvolvedor, desejo um sistema de relacionamento e pontuação, para que o jogador tenha maior engajamento com os personagens da história.

<strong>Cenário 1:  Sistemas de pontos positivos entre personagens e jogador</strong>
- Dado que existe um sistema de relacionamento entre o jogador e personagens 
- Quando é escolhida uma interação considerada positiva
- Então aumenta os pontos de amizade/empatia com o personagem
	- E o personagem da interação te ajuda durante a  jornada
	- E estes pontos serão adicionado na tela de estatística ao final do jogo

<strong>Cenário 2: Sistemas de pontos negativos entre personagens e jogador</strong>
- Dado que existe um sistema de relacionamento entre o jogador e personagens 
- Quando é escolhida uma interação considerada negativa
- Então diminui os pontos de amizade/empatia com o personagem
	- E o personagem não te ajuda durante a história
	- OU evita contato/conversa com seu personagem
	- E estes pontos serão adicionado na tela de estatística ao final do jogo

<strong>Cenário 3: Sistema de pontos - personagem fora dos padrões de normalidade</strong>
- Dado que existe um sistema de relacionamento entre o jogador e personagens
- Quando é escolhida uma interação considerada negativa 
	- E o personagem goste deste tipo de tratamento
- Então aumenta os pontos de amizade
	- E o personagem da interação te ajuda durante a  jornada
	- OU evita contato/conversa com seu personagem
	- E estes pontos serão adicionado na tela de estatística ao final do jogo

#### US05 - Menu inicial
Eu, como desenvolvedor, desejo criar um menu inicial, para que o usuário possa navegar no jogo. 

<strong>Cenário 1 - Botão Iniciar</strong>
- Dado que existe um botão iniciar
- Quando o usuário aperta este botão
- Então o jogo irá inicializar para o estado de progresso atual do jogador

<strong>Cenário 2 - Botão Galeria</strong>
- Dado que existe o botão galeria no menu inicial do jogo
- Quando o usuário apertar este botão
- Então o jogo irá para outra janela, apresentando uma galeria de artes feitas exclusivamente para o jogo

<strong>Cenário 3 - Botão sair</strong>
- Dado que existe o botão sair presente no menu inicial 
- Quando o usuário aperta este botão
- Então a aplicação é fechada
	- E como também a finalização do seu processo no computador

#### US06 - Galeria

Eu, como desenvolvedor, desejo uma galeria de arte, para que seja acessada/desbloqueada pelo jogador ao decorrer do jogo.

<strong>Cenário 1 - Desbloqueio das artes do jogo</strong>
- Dado que o jogador está em determinada parte da história
- Quando o jogador concluir esta parte
- Então as artes criadas em pixel art como plano de fundo, cenário e personagens serão desbloqueadas
	- E poderão ser acessadas no menu de Galeria do jogo

<strong>Cenário 2 - Jogador quer visualizar a arte do jogo na Galeria</strong>
- Dado que existe um menu de galeria das artes do jogo
	- E o jogo acessou por meio do caminho Menu inicial >> Galeria
	- E estejam disponíveis/liberadas artes do jogo
- Quando o jogador clicar no ícone da arte do jogo
- Então será aberta esta mesma arte em tela cheia

<strong>Cenário 3 - Voltar para o menu de Galeria ao clicar na arte desejada</strong>
- Dado que o jogador está na janela de tela cheia da pixel art
- Quando ele clicar no botão de voltar, no canto superior esquerdo da tela
- Então, o jogador voltará para tela inicial da galeria

<strong>Cenário 4 - Voltar para o menu principal a partir da Galeria</strong>
- Dado que o jogador está na galeria do jogo
- Quando ele clicar no botão voltar na tela de galeria
	- E não estiver aberta qualquer arte do jogo, no modo de tela cheia
- Então o jogador irá voltar para o menu principal do jogo

#### US07 - Estatísticas de caminhos seguidos ao final do jogo

Eu, como usuário, desejo que seja apresentadas estatísticas sobre o meu caminho tomado do jogo, para que eu possa comparar com outros jogadores

<strong>Cenário 1 - Caminho X</strong>
- Dado que existe um determinado caminho X a ser seguido
- Quando o jogador escolhe este caminho, dependendo das escolhas realizadas durante o jogo
	- E ele finaliza o jogo
- Então, é mostrado uma tabela de estatísticas, o número percentual de jogadores que seguiram este caminho. 
	- E este caminho será armazenado no banco de dados 

<strong>Cenário 2 - Caminho Y</strong>
- Dado que existe um determinado caminho Y a ser seguido
- Quando o jogador escolhe este caminho, dependendo das escolhas realizadas durante o jogo
	- E ele finaliza o jogo
- Então, é mostrado uma tabela de estatísticas, o número percentual de jogadores que seguiram este caminho. 
	- E este caminho será armazenado no banco de dados 

#### US08 - Salvar as escolhas dos jogadores

Eu, como desenvolvedor, desejo salvar as escolhas dos jogadores, para que eu possa demonstrar/manipular estas informações no banco de dados.

<strong>Cenário 1 - Salvar escolhas no banco de dados</strong>
- Dado que o jogador está numa tela com duas caixas de diálogo, após a interação com personagem da conversa
- Quando o usuário aperta uma das caixas, utilizando o mouse
- Então, o personagem da interação terá uma resposta
	- E esta resposta será salva no banco de dados
	- E irá criar um token próprio
	- E será computada nas estatísticas de caminhos seguidos pelos jogadores ao final do jogo.

<strong>Cenário 2 - Salvar a pontuação de amizade entre os personagens</strong>
- Dado que o jogador pode interagir com os personagens
	- E cada uma das respostas tem um retorno positivo ou negativo para o sistema de amizade
- Quando o jogador escolhe determinada resposta
- Então, ela irá aumentar o nível de amizade entre o jogador e personagem
	- Ou diminuir o nível de amizade entre jogador e personagem
	- E salvar estas respostas no banco de dados
	- E demonstrar esta pontuação ao final do jogo.

#### US09 -  Mini-game RPG

Eu, como usuário, desejo jogar um mini-game ao estilo RPG, para que eu possa ter mais interação e engajamento com o jogo.

<strong>Cenário 1 - Perfil do usuário</strong>
- Dado que existem perfis para o usuário, delimitando seus gostos
- Quando o usuário loga no jogo
	- E responde algumas das perguntas sobre você no início do jogo
- Então, essas escolhas serão demonstradas em diálogos
	- E interações ao decorrer do jogo. 

#### US 09.01 - Movimentação do personagem

Eu, como usuário, desejo movimentar meu personagem, para que eu possa chegar ao final do game.

<strong>Cenário 1 - Personagem move para esquerda</strong> 
- Dado que o personagem tem a função de movimentação
	- E pode andar para direção esquerda 
- Quando aperto o direcional para esquerda
- Então, o personagem irá se movimentar para esquerda
	- Ou não se locomover, caso existe algum objeto na frente do personagem

<strong>Cenário 2 - Personagem move para direita </strong>
- Dado que o personagem tem a função de movimentação
	- E pode andar para direita 
- Quando aperto o direcional para direita
- Então, o personagem irá se movimentar para direita
	- Ou não se locomover, caso existe algum objeto na frente do personagem

<strong>Cenário 3 - Personagem move para cima</strong>
- Dado que o personagem tem a função de movimentação
	- E pode andar para cima 
- Quando aperto o direcional para cima
- Então, o personagem irá se movimentar para cima
 - Ou não se locomover, caso existe algum objeto na frente do personagem

<strong>Cenário 4 - Personagem move para baixo </strong>
- Dado que o personagem tem a função de movimentação
	- E pode andar para baixo 
- Quando aperto o direcional para baixo
- Então, o personagem irá se movimentar para baixo
	- Ou não se locomover, caso existe algum objeto na frente do personagem

#### US 09.02 - Interações com os personagens 

Eu, como desenvolvedor, desejo a interação entre jogador e NPCs do mapa, para que o jogador tenha envolvimento com o jogo

<strong>Cenário 1 - Conversar com os personagens</strong>
- Dado que existe um personagem no mapa
	- E que esteja na frente do jogador
- Quando o jogador aperta o botão de interação
- Então, abre uma caixa de diálogo, juntamente com o avatar do personagem

<strong>Cenário 2 - Escolhas e interações entre personagens do mapa</strong>
- Dado que o jogador apertou o botão de interação
	- E apareceu a caixa de diálogo, juntamente com o avatar do personagem
- Quando aparece um escolha de respostas durante o diálogo
- Então, o jogador escolha uma das opções de respostas
	- E o personagem responde
	- E o tipo de resposta será diferente, a depender de cada interação

<strong>Cenário 3 - Sistemas pontos de amizade implementados no mini-game de RPG</strong>
- Dado que o jogador interage com os NPCs do jogo
	- E está na frente do personagem
	- E abre a caixa de diálogo
- Quando ele faz determinada escolha
- Então, vai aumentar o sistema de amizade/empatia entre o jogador e personagem
	- Ou vai diminuir o sistema de amizade/empatia entre o jogador e personagem
	- E estas interações com personagens serão salvas no banco de dados 
</details>

<details>
	<summary><h3>Regras de Negócio</h3></summary>

<table>
	<tr>
		<td>Identificador</td>
		<td>OT0001</td>
	</tr>
	<tr>
		<td>Nome</td>
		<td>Registro do usuário</td>
	</tr>
	<tr>
		<td>Módulo</td>
		<td>Firebase</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>24/09/2022</td>
	</tr>
	<tr>
		<td>Autor</td>
		<td>Daniel Vitor</td>
	</tr>
	<tr>
		<td>Data da última alteração</td>
		<td>27/09/2022</td>
	</tr>
	<tr>
		<td>Versão</td>
		<td>0.1b</td>
	</tr>
	<tr>
		<td>Dependências</td>
		<td>OT0002 e OT0003</td>
	</tr>
	<tr>
		<td>Descrição</td>
		<td>Ao iniciar o jogo, o usuário deverá preencher preencher os campos de email/login e senha. Estes dois campos são obrigatórios. O usuário pode sair ao apertar o botão de login.</td>
	<tr>
	<tr>
		<td>Requisitos</td>
		<td>
			<ul>
				<li>A senha deve possuir, no mínimo, 6 caracteres</li>
				<li>A senha deve possuir caracteres especiais, números e letras maiúsculas</li>
				<li>O email a ser cadastrado não pode ter sido usado anteriormente</li>	
			<ul>
		</td>
</table>

<table>
	<tr>
		<td>Identificador</td>
		<td>OT0002</td>
	</tr>
	<tr>
		<td>Nome</td>
		<td>Login do usuário</td>
	</tr>
	<tr>
		<td>Módulo</td>
		<td>Firebase</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>24/09/2022</td>
	</tr>
	<tr>
		<td>Autor</td>
		<td>Daniel Vitor</td>
	</tr>
	<tr>
		<td>Data da última alteração</td>
		<td>27/09/2022</td>
	</tr>
	<tr>
		<td>Versão</td>
		<td>0.1b</td>
	</tr>
	<tr>
		<td>Dependências</td>
		<td>OT0001</td>
	</tr>
	<tr>
		<td>Descrição</td>
		<td>O usuário, após cadastrar suas credenciais no sistema de banco de dados do jogo, ele será transferido para tela de login e senha. Esta tela de login terá o campo para preenchimento do email da senha cadastrada pelo usuário.</td>
	</tr>
	<tr>
		<td>Requisitos</td>
		<td>
			<ul>
				<li>O email já deve estar cadastrado no banco de dados</li>
				<ul>
					<li>Caso o usuário digite um email não registrado, vai aparecer uma mensagem de email e mail não cadastrado no sistema</li>
				</ul>
					<li>A senha deve ser preenchida corretamente</li>
					<ul>
						<li>Caso o usuário erre no preenchimento da senha, vai aparecer a mensagem de senha incorreta</li>
					</ul>
					<li>Se os campos de login e senha estiverem corretos, o jogador irá para tela de menu do jogo.</li>
			</ul>
		</td>
	</tr>
</table>	

<table>
	<tr>
		<td>Identificador</td>
		<td>OT0003</td>
	</tr>
	<tr>
		<td>Nome</td>
		<td>Menu inicial</td>
	</tr>
	<tr>
		<td>Módulo</td>
		<td>Interface</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>24/09/2022</td>
	</tr>
	<tr>
		<td>Autor</td>
		<td>Mateus Citriniti</td>
	</tr>
	<tr>
		<td>Data da última alteração</td>
		<td>27/09/2022</td>
	</tr>
	<tr>
		<td>Versão</td>
		<td>0.1b</td>
	</tr>
	<tr>
		<td>Dependências</td>
		<td>OT0001 e OT0002</td>
	</tr>
	<tr>
		<td>Descrição</td>
		<td>O menu inicial tem a função de ser a tela central do jogo, cujo usuário pode escolher suas configurações de vídeo, som e controles do jogo. Isto é importante, principalmente em computadores com nível de processamento menor. Não apenas as configurações, o menu inicial deve ter a galeria de todas as artes desbloqueadas durante o jogo, como também o menu de sair da aplicação.</td>
	</tr>
	<tr>
		<td>Requisitos</td>
		<td>
			<ul>
				<li>Caso o jogador aperte o botão Iniciar, o jogo vai inicializar. Dependendo do seu processo de salvamento, ele pode iniciar na parte em que o jogador parou.</li>
				<li>Ao apertar o botão Galeria, o jogador será transferido para o menu das artes em pixel-art desbloqueadas e utilizadas durante o jogo</li>
				<li>Quando o jogador apertar o botão sair, ele sairá da aplicação.</li>
			<ul>
		</td>
	</tr>
</table>

<table>
	<tr>
		<td>Identificador</td>
		<td>OT0004</td>
	</tr>
	<tr>
		<td>Nome</td>
		<td>Galeria</td>
	</tr>
	<tr>
		<td>Módulo</td>
		<td>Interface</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>24/09/2022</td>
	</tr>
	<tr>
		<td>Autor</td>
		<td>Mateus Citriniti</td>
	</tr>
	<tr>
		<td>Data da última alteração</td>
		<td>27/09/2022</td>
	</tr>
	<tr>
		<td>Versão</td>
		<td>0.1b</td>
	</tr>
	<tr>
		<td>Dependências</td>
		<td>OT0003 e OT0005</td>
	</tr>
	<tr>
		<td>Descrição</td>
		<td>A Galeria de artes é uma forma de recompensa para os jogadores que investiram no jogo Origin of Tomorrow. É um elemento utilizado em diversos jogos, podendo seus elementos serem desbloqueados em momentos específicos do jogo ou serem apresentados como colecionáveis dentro de fases do jogo.</td>
	<tr>
	<tr>
		<td>Requisitos</td>
		<td>
			<ul>
				<li>Os elementos da galeria serão mostrados apenas se o jogador iniciar uma campanha.</li>
				<li>Cada arte será desbloqueada em momentos específicos dentro do jogo</li>
				<li>Dentro do menu da galeria, irá aparecer uma foto em miniatura, representando cada uma das artes em pixel art elaboradas para o jogo</li>
				<li>Caso o jogador clique em algumas das miniaturas, ele será transferido para outra janela, exibindo a arte em tela cheia.</li>
				<li>Ao apertar o botão voltar, o jogador volta para janela anterior. No caso, a janela de menu da galeria.</li>
				<li>O jogador pode voltar para o menu iniciar, apertando o botão voltar.</li>
			<ul>
		</td>
</table>

<table>
	<tr>
		<td>Identificador</td>
		<td>OT0005</td>
	</tr>
	<tr>
		<td>Nome</td>
		<td>Diálogos do jogo</td>
	</tr>
	<tr>
		<td>Módulo</td>
		<td>Interface e Interação Jogador/Aplicação</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>24/09/2022</td>
	</tr>
	<tr>
		<td>Autor</td>
		<td>Gabriel Oliveira Aires</td>
	</tr>
	<tr>
		<td>Data da última alteração</td>
		<td>27/09/2022</td>
	</tr>
	<tr>
		<td>Versão</td>
		<td>0.1b</td>
	</tr>
	<tr>
		<td>Dependências</td>
		<td>OT0001, OT002, OT0003 e OT0006</td>
	</tr>
	<tr>
		<td>Descrição</td>
		<td>Os diálogos são elementos essenciais de um jogo ao estilo Visual Novel. O gênero é focado, essencialmente, em histórias e interações entre jogadores e personagens.<br>
		Sendo assim, é necessário que sejam apresentadas dentro do contexto da história. Seja para salvar algum personagem ou não, seja para aumentar pontos de amizade/empatia entre os personagens.<br>
		Os diálogos serão apresentados juntamente com as artes do jogo e o avatar de cada um dos personagens, representando seus estados emocionais a partir de suas respostas no jogo. Eles ficarão localizados dentro de uma caixa de texto.</td>
	</tr>
	<tr>
		<td>Requisitos</td>
		<td>
			<ul>
				<li>Para que os diálogos sejam trocados ao decorrer do jogo, o jogador deve apertar qualquer botão do mouse ou tecla do teclado para isso.</li>
				<li>Em determinados momentos, haverá opções de escolhas para o jogador. Para avançar, o jogador deve escolher uma delas. Dependendo da resposta, caminhos e elementos diferentes serão demonstrados</li>
				<li>As escolhas podem afetar a maneira como os personagens tratam você ao decorrer do jogo. </li>
				<li>Quando o jogador customizar seu perfil de usuário, definindo suas preferências (mesmo que estas não sejam verdadeiras), elas serão apresentadas em algum contexto da história.</li>
				<li>Exemplo: Qual sua fruta favorita?</li>
				<ul>
					<li>Resposta: Maçã. Isto será salvo como variável e armazenado no banco de dados.</li>
					<ul>
						<li>Durante o jogo: Hmmm, vamos comer a fruta que você gosta? Que tal uma (variável = maçã)?</li>
				</ul>
			<ul>
		</td>
	</tr>
</table>

<table>
	<tr>
		<td>Identificador</td>
		<td>OT0006</td>
	</tr>
	<tr>
		<td>Nome</td>
		<td>Perfil do jogador</td>
	</tr>
	<tr>
		<td>Módulo</td>
		<td>Interação Jogador/Aplicação e Comunicação banco de dados</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>XXXXXXXXX</td>
	</tr>
	<tr>
		<td>Autor</td>
		<td>Daniel Vitor e Gabriel Oliveira Aires</td>
	</tr>
	<tr>
		<td>Data da última alteração</td>
		<td>XXXXXXXX</td>
	</tr>
	<tr>
		<td>Versão</td>
		<td>0.1b</td>
	</tr>
	<tr>
		<td>Dependências</td>
		<td> OT0001, OT002, OT0005 e OT0006</td>
	</tr>
	<tr>
		<td>Descrição</td>
		<td>Ao iniciar a aplicação, o jogador terá a oportunidade de personalizar seu perfil. Este perfil terá algumas perguntas sobre o perfil do jogador. Vale ressaltar que nenhum tipo de pergunta pessoal ou do âmbito extremamente privado do indivíduo como sexualidade e etnia serão impostas neste questionário. No máximo, perguntas voltadas para o âmbito geral como nome de música, cor, filme ou comida favorita.</td>
	</tr>
	<tr>
		<td>Requisitos</td>
		<td>
			<ul>
				<li>Neste módulo, é necessário que o jogador esteja cadastrado e logado no sistema. Ao apertar o botão iniciar, dentro do menu inicial do jogo, será exibido uma nova janela. Esta janela conterá um pequeno questionário a respeito do jogador, podendo este questionário ser predeterminado ou não</li>
				<li>Ao fazer sua escolha, em alguns contextos serão apresentados características do perfil do jogador.</li>
				<ul>
					<li>Qual é a sua cor favorita?</li>
					<li>Diálogo do personagem: Que tal você vestir essa camisa na cor x. Eu sei que é a sua cor favorita!</li>
				</ul>
				<li>Estas variáveis serão apresentadas em negritos e com cor destacada, conforme exemplo abaixo.</li>
				<ul>
					<li>Branco</li>
				</ul>
				<li>Será uma forma de lembrar a escolha/definição de perfil feita pelo jogador.</li> 
			</ul>
		</td>
	</tr>
</table>

<table>
	<tr>
		<td>Identificador</td>
		<td>OT0007</td>
	</tr>
	<tr>
		<td>Nome</td>
		<td>Escolhas</td>
	</tr>
	<tr>
		<td>Módulo</td>
		<td>Interação Jogador e armazenamento de informações no Firebase</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>XXXXX</td>
	</tr>
	<tr>
		<td>Autor</td>
		<td>Daniel Vitor, Gabriel Aires, Jonathan Rodrigues e Mateus Citriniti</td>
	</tr>
	<tr>
		<td>Data da última alteração</td>
		<td>XXXXXX</td>
	</tr>
	<tr>
		<td>Versão</td>
		<td>0.1b</td>
	</tr>
	<tr>
		<td>Dependências</td>
		<td>OT0001, OT0002, OT0003, OT0004, OT0005 e OT0006</td>
	</tr>
	<tr>
		<td>Descrição</td>
		<td>Como todo bom jogo do gênero Visual Novel, ao decorrer da campanha haverá escolhas que irão afetar o progresso da história. Sendo assim, caso você siga para o caminho A, diversos elementos e até personagens podem mudar. Caso você siga para caminho B, outros objetos serão apresentados e personagens também. Dependendo das escolhas morais desencadeadas durante o jogo, personagens podem morrer e a história seguirá seu ritmo mesmo assim.
		<br>
Buscamos como fonte de inspiração obras da empresa Telltale Games. Tanto que a implementação das escolhas para serem armazenadas, dentro de um banco de dados e apresentadas ao final da jornada do jogador, tem a sua origem em jogos como The Walking Dead e Batman.</td>
	</tr>
	<tr>
		<td>Requisitos</td>
		<td>
			<ul>
				<li>Caso o jogador faça determinada escolha para caminho A, a história caminhará para caminho X. Caso o jogador faça escolha para caminho B, a história seguirá para caminho Y. Conforme dito anteriormente, cada uma das escolhas irá apresentar novas experiências narrativas ao jogador. </li>
				<li>As escolhas serão armazenadas no banco de dados e apresentadas ao jogador ao final do jogo, apresentando uma tela de estatísticas com desempenho e caminhos tomados pelo jogador.</li>
				<li>Exemplo: O jogador seguiu na história do jogo, realizando suas escolhas morais e de interação com o personagem. </li>
				<li>O caminho traçado é X:</li>
				<ul>
					<li>Porcentagem de jogadores que escolheram este caminho é igual 44%</li>
				</ul>
				<li>Outros jogadores traçaram o caminho Y:</li>
				<ul>
					<li>Porcentagem de jogadores que escolheram este caminho é igual a 56%</li>
				</ul>
			</ul>
		</td>
	</tr>
</table>

<table>
	<tr>
		<td>Identificador</td>
		<td>OT0008</td>
	</tr>
	<tr>
		<td>Nome</td>
		<td>Mini-game RPG</td>
	</tr>
	<tr>
		<td>Módulo</td>
		<td>Interação e maior engajamento jogador/aplicação</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>XXXXX</td>
	</tr>
	<tr>
		<td>Autor</td>
		<td>Gabriel Aires, Jonathan Rodrigues e Mateus Citriniti</td>
	</tr>
	<tr>
		<td>Data da última alteração</td>
		<td>XXXXXX</td>
	</tr>
	<tr>
		<td>Versão</td>
		<td>0.1b</td>
	</tr>
	<tr>
		<td>Dependências</td>
		<td>OT0001, OT0002, OT0003, OT0004, OT0005, OT0006 e OT0007</td>
	</tr>
	<tr>
		<td>Descrição</td>
		<td>O sistema de perfil do jogador, como também o sistema de pontos são funcionalidades conectadas, seguindo princípios de Role-Playing Game, comumente empregados em diversos títulos atuais, sendo uma tendência para quase todos os gêneros de jogos existentes. Filmes como Jogador Número Um e animações japonesas do gênero Isekai apresentam estes conceitos para o público em geral.<br>
		De qualquer forma, em determinado momento da história, a forma como o jogo está sendo apresentado para o jogador será modificada.</td>
	</tr>
	<tr>
		<td>Requisitos</td>
		<td>
			<ul>
				<li>Primeiramente, a perspectiva será isométrica. Os personagens serão apresentados em sprites com cabeça gigante e corpo pequeno. Remete visualmente aos jogos de Role-Playing Game do antigo Super Nintendo, videogame extremamente influente e importante da empresa japonesa Nintendo. </li>
				<li>Os sprites dos jogadores poderão se mover em quatro sentidos, respectivamente: cima, baixo, direita e esquerda.</li>
				<li>Ao se deparar com algum objeto ou personagem na frente do jogador, o algoritmo de colisão será acionado e o personagem controlável vai parar de movimentar.</li>
				<li>O personagem controlável não pode ultrapassar os objetos, devendo ficar imóvel, apenas acionando a animação de movimentação.</li>
				<li>Haverá um mapa para ser explorado pelo jogador, tendo objetos, elementos arquitetônicos, vegetação, florestas e personagens para interação.</li>
				<li>Os personagens para interação terão os sistemas de diálogos e escolhas estipulados anteriormente. Vale ressaltar que o sistema de perfis e sistema de pontos de empatia/amizade estarão vigentes neste modo.</ul>
			</ul>
		</td>
	</tr>
</table>

</details>
	
<details>
	<summary><h3>Termos de Uso</h3></summary>

Os termos deste contrato (“Termos de Uso”) regem o relacionamento entre você e os colaboradores, pessoas físicas com sede em Palmas/Tocantins.

Antes de acessar ou utilizar o jogo, você deve concordar com os Termos de Uso. É necessário que você crie uma conta no jogo, sendo que dessa forma, você declara ter 16 anos de idade ou mais. Caso tenha de 16 a 17 anos, você declara que seus responsáveis legais estão de acordo com os termos de uso presentes no documento.

Ao instalar e jogar Origin of Tomorrow, você estará de acordo com estes termos de uso. Se não estiver de acordo com estes termos de uso, não instale ou jogue o jogo.

Caso você não concorde com as atualizações do termo de uso, ou de qualquer outra política presente neste documento, sua licença para utilizar o jogo cessará, e você deverá interromper o uso do jogo imediatamente.

### Concessão de Licença Limitada para Uso do Jogo

Levando em conta a sua concordância com os presentes Termos de Uso, concebemos a você uma licença não exclusiva, intransferível, não sublicenciável, revogável e limitada para o acesso e uso do jogo para seus fins de entretenimento. Você concorda em não usar o jogo para nenhuma outra finalidade.
Não é permitida a venda, compra, aluguel ou doação da sua conta, nem criar dados falsos. Você não poderá jogar caso já tenha sido banido anteriormente. Sua conta serve apenas para fins não comerciais.
Você não está permitido a jogar caso tenha menos de 16 anos. O uso do seu cartão de crédito ou outros instrumentos de pagamento por menores, são responsabilidade sua.

### Dados de Acesso e sua Conta

Será solicitado que você escolha um e-mail e senha para sua conta. Essa conta não deve ser compartilhada, e nem pode ser acessada por outras pessoas. Caso desconfie ou tome conhecimento que sua conta está sendo acessada indevidamente, notifique as equipes através do github e altere os seus dados de acesso. Você é o único responsável pela manutenção da confidencialidade dos Dados de Acesso e será responsável por todos os usos dos Dados de Acesso autorizados ou não por você. Você é responsável por tudo que acontece por meio da sua Conta.

### Propriedade

### Jogo

Todos os direitos sobre o jogo são de propriedade dos colaboradores do github (Gabriel Aires, Mateus Citriniti, Jonathan Rodrigues; Daniel Vitor).

### Contas

Não obstante disposições em contrário aqui expressas, você reconhece e concorda que não terá propriedade ou outros direitos de propriedade sobre a conta, e você reconhece e concorda ainda que todos os direitos sobre a conta são e serão sempre de propriedade e para o benefício dos colaboradores do github (Gabriel Aires, Mateus Citriniti, Jonathan Rodrigues; Daniel Vitor).

### Uso da imagem do Usuário

Ao jogar Origin of Tomorrow, você autoriza a divulgação da sua imagem e nome para materiais de divulgação do jogo. Neste caso, você autoriza, expressa ser sua vontade e declara sua autorização pelo uso supramencionado. Tendo conhecimento disso, qualquer reclamação referente ao ponto mencionado acima se torna inviável. A autorização é concedida a título gratuito, abrangendo o uso da imagem em todo o território nacional.
	Essa autorização pode ser revogada a qualquer momento por você, porém, seu uso do jogo deve cessar imediatamente para que os colaboradores possam então tomar as devidas providências.

### Sua licença para o jogo Origin of Tomorrow

Por este documento, você concede aos colaboradores (Gabriel Aires, Mateus Citriniti, Jonathan Rodrigues; Daniel Vitor), uma licença irrevogável, perpétua, transferível, integralmente paga e sem quaisquer tipo de custos e o direito de usar e praticar, de qualquer forma, seus Conteúdo de Usuário.

### Atualizações do jogo

Você compreende que o jogo está em constante evolução. Os colaboradores podem requerer que você aceite atualizações do jogo instalado em seu computador. Você reconhece  e concorda que o jogo pode ser atualizado assim que necessário. Caso seja necessário, você deverá atualizar outros softwares relacioandos para o funcionamento adequado do jogo.

### Limitação de Responsabilidade

Os colaboradores não são responsáveis por danos indiretos, incidentais, consequentes, especiais, punitivos ou similares.

### Lei
Você concorda que todas as disputas entre você e os colaboradores serão regidas pelas leis do Brasil, desconsiderando-se disposições de conflitos de lei.

### Proteção de Dados
Os colaboradores são os únicos responsáveis pela segurança dos dados e informações disponibilizados pelos usuários, obriando-se os colaboradores:

1. Tratar e usar os dados pessoais nos termos legalmente permitidos recolhendo, conservando, registando, organizando, consultando ou transmitindo os mesmos, apenas e somente nos casos em que o seu usuário tenha dado o consentimento.

2. Tratar os dados de modo compatível com as finalidades para os quais tenham sido recolhidos;

3. Conservar os dados apenas durante o período contratual e durante o período necessário à prossecução das finalidades da recolha ou do tratamento posterior, garantindo a sua confidencialidade;

4. Informar imediatamente ao Usuário, devendo prestar toda a colaboração necessária a qualquer investigação que venha a ser realizada, caso exista alguma quebra de segurança, ou suspeita da mesma, independentemente de colocar ou não em causa a segurança e integridade dos Dados Pessoais;

5. Assegurar que os respetivos colaboradores ou os prestadores de serviços externos contratados pelos colaboradores, que venham a ter acesso a dados pessoais dos Usuários no contexto do APP cumprem as disposições legais aplicáveis em matéria de proteção de dados pessoais, designadamente, não cedendo ou divulgando tais dados pessoais a terceiros, nem deles fazendo uso para quaisquer fins que não os estritamente consentidos pelos respectivos Usuários ou, se aplicável, ser o seu processamento objeto de notificação ou de pedido de autorização à Comissão Nacional de Proteção de Dados.

</details>

## A2 - Sprint 3

<details>
	<summary><h3>Front-end</h3></summary>


Durante esta sprint, os integrantes focaram no aperfeiçoamento do protótipo original. Neste sentido, buscamos formas de implementação das histórias de usuários criadas durante a Sprint 2. Houve a necessidade de um novo gerenciamento das tarefas entre os integrantes, pois era notório a sobrecarga e cansaço de alguns componentes do projeto de ficarem encarregados de apenas uma função. Principalmente, referente a implementação do Firebase dentro da nossa aplicação. 
</details>
	
<details>
	<summary><h3>Movimentação</h3></summary>
	
Utilizando a Godot Engine, juntamente com as ferramentas Krita e Aseprite, fizemos animações da personagem Sabrina e sua movimentação, conforme US09.01. O maior desafio foi tentar, organicamente, estabelecer a animação <strong>idle</strong> da personagem em quatro posições diferentes: esquerda, direita, cima e baixo. Felizmente, conseguimos entender como seria a sua implementação e a utilização das coordenadas (x, y), dentro da função que deveriam ser passadas, por intermédio da linguagem GDScript. Abaixo, o resultado do nosso esforço. 

https://user-images.githubusercontent.com/90778217/201501700-f48df235-321b-457e-8233-008e1cb30acf.mp4
	
</details>
	
<details>
	<summary><h3>Interação objetos e NPC</h3></summary>
	
Aproveitando o bom resultado da implementação da movimentação do personagem, quando o jogo mudar para perspectiva RPG, conseguimos colocar um sistema de colisão que serão acionadas após o jogador chegar perto em determinados objetos. Um ponto de interrogação irá aparecer na tela, indicando como ponto de interesse e interação ao jogador. Abaixo, o funcionamento desta implementação.
<br>

https://user-images.githubusercontent.com/90778217/201501920-875e55bb-b29a-4c01-9137-688572aa505f.mp4
</details>	

<details>
	<summary><h3>Melhorias na interface gráfica do projeto original</h3></summary>
	
https://user-images.githubusercontent.com/90778217/201503342-4b6a85cd-303f-4356-8fb9-1348ab99cba5.mp4


Com o intuito de cumprir os prazos estipulados nesta Sprint 3, os integrantes melhoraram as caixas de diálogo do jogo, fontes, menu inicial e Galeria. Futuramente, pensamos em colocar uma animação inicial da personagem Sabrina, como também efeito parallax nas nuvens do menu inicial. Interessante observar o aprimoramento do uso do Dialogic durante o desenvolvimento do projeto.

<p align="center">
	<img width="600"
		alt="Nova caixa de diálogo e escolhas"
		src="https://i.imgur.com/QfwM4G3.png"
		<br><br>Criação de uma nova caixa de diálogo e de escolhas, utilizando Aseprite. 
</p>
	
<p align="center">
	<img width="600"
		alt="Novo menu do Jogo"
		src="https://i.imgur.com/PI8fVGH.png"
		<br><br>Criação do novo menu do jogo, utilizando Krita. Futuramente, terá animações.
</p>

<p align="center">
	<img width="600"
		alt="Novo menu do Jogo"
		src="https://i.imgur.com/7aHyCDk.png"
		<br><br>Criação do novo menu do jogo, utilizando Krita. Futuramente, terá animações.
</p>
</details>
	
<details>
	<summary><h3>Back-end</h3></summary>
	
#### Salvar as escolhas dos jogadores no Firebase

Conforme a US08, uma das propostas do nosso jogo é salvar as escolhas geradas pelo usuário dentro do banco de dados escolhidos para manipulação das informações dos jogadores. Depois de muita luta e pesquisa, conseguimos fazer funcionar a implementação inicial desta funcionalidade. Inicialmente, pensamos utilizar o recurso get_scene para criar diversas cenas e a partir delas, armazenar as escolhas do jogador. Felizmente, após alguns testes e pesquisas, conseguimos armazenar as escolhas do usuário utilizando sinais, umas das funcionalidades da engine Godot. Abaixo, o código elaborado pelos integrantes. 

```gdscript
var dialog = Dialogic.start("ConversaTrue")
    add_child(dialog)
    dialog.connect('dialogic_signal', self, "dialogic_signal_event")
    dialog.connect('dialogic_signal', self, "dialogic_signal_event")
função dialogic_signal_event
func dialogic_signal_event(param):
    if param == 'get_choice':
        print("siiiiiii")
        choice1.text = "Resposta sarcastica"
        profile.choice1 = { "stringValue": choice1.text}
        match new_profile:
            true:
                Firebase.save_document("users?documentId=%s" % Firebase.user_info.id, profile, http)

            false:
                Firebase.update_document("users/%s" % Firebase.user_info.id, profile, http)
        information_sent = true
    if param == 'get_choice2':
        print("Faz o L")
        choice1.text = "Resposta neutra"
        profile.choice1 = { "stringValue": choice1.text}
        match new_profile:
            true:
                Firebase.save_document("users?documentId=%s" % Firebase.user_info.id, profile, http)

            false:
                Firebase.update_document("users/%s" % Firebase.user_info.id, profile, http)
        information_sent = true
```
</details>

<details>
	<summary><h3>Colaboradores</h3></summary>
	

<br>

<p align="left">
	<img width="100"
	     	align="left"
		alt="Daniel"
		src="https://i.imgur.com/qeJnyNH.png"
		<br><br>
		Meu nome é Daniel Vitor. Tenho 18 anos e estou cursando Engenharia de Software no Centro Universitário Católica do Tocantins. Tenho como paixões programar e me aprimorar como pessoa.
		<br><strong>Integração com Firebase e Ideias</strong>
</p>

<br>

<p align="left">
	<img width="100"
	     	align="left"
		alt="Gabriel"
		src="https://i.imgur.com/4b3eRBA.png"
		<br><br>
		Meu nome é Gabriel Aires, natural de Palmas (TO). Estudo Engenharia de software no Centro Universitário Católica do Tocantins. Tenho como paixões jogar videogame, codar e ler.
		<br><strong>Artes, Codificação, Documentação e Ideias</strong>
</p>

<br>

<p align="left">
	<img width="100"
	     	align="left"
		alt="Jonathan"
		src="https://i.imgur.com/Dek9BJr.png"
		<br><br>
		Meu nome é Jonathan Rodrigues. Atualmente, estudo Engenharia de software no Centro Universitário Católica do Tocantins. Tenho como paixões desenhar, jogar videogame, colocar o headphone no talo e programar.
		<br><strong>Arte, Roteiro e Documentação</strong>  
</p>

<br>

<p align="left">
	<img width="100"
	     	align="left"
		alt="Mateus, a lenda"
		src="https://i.imgur.com/utVksoZ.png"
		<br><br>
		Meu nome é Mateus Citriniti Emilio. Atualmente, estudo Engenharia de software no Centro Universitário Católica do Tocantins. Tenho como paixões jogar, programar e ouvir música.
		<br><strong>Integração com Firebase, Codificação, Documentação e Ideias</strong>
</p>

<br>
</details>

<details>
	<summary><h3>Fontes de pesquisa</h3></summary>

[Godot documentation](https://docs.godotengine.org/en/stable/)
<br>[GDQuest - Login with Firebase in Godot 3.1 (tutorial)](https://www.youtube.com/watch?v=Udm7uDQM05w)
<br>[Gamesfromscratch - Dialogic -- Powerful New Dialog Add-On For Godot](https://www.youtube.com/watch?v=QXm0L-QSXoQ)
<br>[Emi - Getting Started With Dialogic](https://www.youtube.com/watch?v=sYjgDIgD7AY)

</details>
