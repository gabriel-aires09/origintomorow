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

<p>Binários compilados podem ser baixados na página de [releases do GitHub](https://github.com/gabriel-aires09/origintomorow/releases). Necessário apenas descompactar os arquivos e rodar diretamente no sistema. O executável e o arquivo de extensão .pck devem estar localizados no mesmo diretório. Sem isso, o jogo não será executado. </p>

<p>Quanto ao uso da aplicação em <strong>navegadores</strong>, você pode acessar ao jogo por meio deste link: [Github Pages](https://gabriel-aires09.github.io/origintomorow/). Criamos uma branch própria hospedada no Github Pages para acesso e conhecimentos das pessoas que tenham interesse em acessar ao jogo. Todos os novos recursos, mecânicas e funcionalidades serão também atualizadas neste link. Nossa intenção é apresentar nossas ideias, de maneira acessível, para outras pessoas interessadas no projeto.</p>

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

### História 1: Registro

Eu como jogador desejo registrar uma conta no sistema para que eu possa ter acesso ao jogo

#### Cenário 1: Primeira entrada

Dado que o usuário não tenha uma conta
<ul>
	<li>E queira iniciar o jogo</li>
</ul>
Então ele seleciona o opção registro 
<ul>
	<li>E preenche os dados email, senha,confirmar senha</li>
</ul>
O sistema retorna uma confirmação 
<ul>
	<li>E o jogador é levado para a tela inicial</li>
</ul>
    
#### Cenário 2: Senha fraca

Dado que o usuário
Quando estiver preenchendo os dados do cadastro
<ul>
	<li>E a senha possuir menos que seis caracteres</li>
</ul>
Então o sistema retorna um erro
<ul>
	<li>E pede para o usuário tentar outra senha novamente</li>
</ul>     
    
### História 2:  Sistema de decisões

Eu como jogador quero escolher que escolhas tomar durante a história para que possa ver como minhas decisões afetaram a história no geral

#### Cenário 1: Escolha impactante
Dado que o usuário esteja jogando
<ul>
	<li>E apareça duas ou mais opções de escolha</li>
</ul>

Ex: Ajudar, ignorar    

Então o jogador seleciona uma das duas opções, salva a escolha que o jogador tomou
<ul>
	<li>E avança a história de acordo com a opção escolhida</li>
</ul>
</details>

<details>
	<summary><h3>Regras de negócio - Jogo de texto</h3></summary>

### Login/Registro

Um email e senha são obrigatórios

<ul>
	<li>A senha deve possuir no mínimo 6 caracteres</li>
	<li>O email a ser cadastrado não pode ter sido usado anteriormente</li>
</ul>

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

###	Jogo

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
	
## Colaboradores

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
		<br><strong>Codificação, Documentação e Ideias</strong>
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
		<br><strong>Codificação, Documentação e Ideias</strong>
</p>

<br>

## Fontes de pesquisa

[Godot documentation](https://docs.godotengine.org/en/stable/)
<br>[GDQuest - Login with Firebase in Godot 3.1 (tutorial)](https://www.youtube.com/watch?v=Udm7uDQM05w)
<br>[Gamesfromscratch - Dialogic -- Powerful New Dialog Add-On For Godot](https://www.youtube.com/watch?v=QXm0L-QSXoQ)
<br>[Emi - Getting Started With Dialogic](https://www.youtube.com/watch?v=sYjgDIgD7AY)
