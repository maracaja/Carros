# Atividade 2 - Carros
#### Autor: Sérgio Maracajá Junior - RA 11000315

* * *

## Sobre a aplicação

A presente aplicação tinha como objetivo criar um mecanismo de jogo simples, onde um carro circularia na tela com obstáculos, encerrando em caso de colisão do mesmo.

Porém, devido a diversos problemas quanto à compreensão e implementação de parte das ideias pensadas para o projeto (bem como um estranho erro de divisão por zero na versão Web que não se repete na versão compilada para PC), o que restou foi um ambiente bem mais simples que o idealizado, onde um carro é controlado para circular na tela, conforme parte do objetivo inicial, mas sem nenhum diferencial, além de quando ele sair da tela, entra o carro com cores diferentes, simulando a entrada de um carro diferente.

* * *

## Implementação

Segue abaixo a descrição do código-fonte, contido na pasta do projeto como mais um exemplo na pasta `examples`, sob o título `atividade2`. Além dos arquivos C++ que serão descritos mais adiante, foram realizadas as seguintes adições ao projeto:

-   Em `examples/CMakeLists.txt`, foi adicionada a instrução `add_subdirectory(atividade2)`, sendo comentada a instrução original;
-   Em `public`, além dos arquivos gerados pela compilação do WASM, a página `helloworld.html` foi modificada para que o canvas possa conter toda a janela da aplicação, configurada para 700 x 700 (linhas 48-49). Também foi modificada a linha 258 para que a página execute o arquivo `atividade2.js`;
-   A pasta `docs` foi criada com os arquivos compilados pelo `build-wasm` e o `helloworld.html`, visando a criação do site no GitHub Pages;
-   Na pasta `atividade2`, em `CMakeLists.txt`, foi definido o nome do projeto na linha 1, enquanto na linha 2, foram adicionados os arquivos `carro.cpp` e `asfalto.cpp`;


### main.cpp

Este arquivo acabou por ser, na prática, uma repetição do código apresentado no Asteroids, com o método `main` instanciando a aplicação (linha 7), gerando a janela onde a aplicação reside (linhas 9-17), com dimensões 700x700 e sem as opções de FPS e tela cheia, e chamando seu método `run` (linha 18), tudo isso dentro de uma estrutura `try-catch`.


### window.hpp

Assim como em vários exemplos de aula, este arquivo tem a definição da classe `Window`, com as inserções pertinentes a esta aplicação:

-   Nas linhas 10 e 11, foram incluídas as diretivas `using namespace` para `std` e `glm`, visando facilitar a escrita e a visualização do código (o que é repetido em vários outros arquivos);
-   Entre as linhas 16 e 21, são declarados os protótipos dos métodos a serem sobrescritos;
-   Entre as linhas 24 e 30, são declaradas (já como variáveis globais privadas):
    -   `tamanhoTela` armazena as dimensões correntes da tela de aplicação;
    -   `asfaltoProg` e `carroProg` armazenam os dados dos programas responsáveis pela renderização da textura de asfalto e do carro, respectivamente;
    -   `appData` armazena os dados de estado do programa, que acabou por ser apenas a tecla pressionada;
    -   Os objetos `carro` e `asfalto` têm os dados dos entes funcionais desta aplicação;
    -   POr último, o objeto `r` disponibiliza um gerador de números pseudo-aleatórios para ser utilizado neste contexto.


### appdata.hpp

Este arquivo de cabeçalho define o estado da aplicação, referente à tecla pressionada pelo usuário.
No caso, temos, na linha 9, os quatro comandos que se tornaram possíveis, referentes às direções nas quais o carro pode se movimentar. Este estado é armazenado no `struct` das linhas 11-14.


### asfalto.hpp

Neste arquivo-fonte, temos as funções e variáveis necessárias para renderizar o efeito de chão asfaltado.

-   Entre as linhas 13 e 15 são declaradas as funções públicas `create`, `paint` e `destroy`;
-   Nas linhas 18 e 19 estão declaradas e inicializadas variáveis relqacionadas aos respectivos shaders;
-   Entre as linhas 21 e 27, é definida a `struct` que guarda as informações de cada camada para a renderização da textura, no caso, VBO, VAO, tamanho e quantidade dos pontos;
-   Na linha 29 é declarado um array com duas camadas para a geração da textura; na linha seguinte, um gerador de números pseudo-aleatórios `r` é declarado.


### carro.hpp

Este arquivo tem as definições básicas do carro, objeto mais importante da aplicação:

-   Entra as linhas 14 e 17, são declaradas as funções públicas `create`, `paint`, `destroy` e `update`;
-   Como atributos públicos nas linhas 19 a 22, estão as variáveis que armazenam as informações das cores do carro, da sua rotação na tela, da escala (definida em 11% das dimensões definidas originalmente), e do seu deslocamento, associado à sua posição na tela;
-   Nos itens privados, há a definição das variáveis associadas aos shaders (linhas 25 a 29), dos vetores VAO, VBO e EBO (linhas 31 a 33) e ainda a criação de um objeto gerador de números pseudo-aleatórios `r` (linha 35) e do protótipo da função `novasCores()` (linha 36) que fornece as cores do carro.


### window.cpp

Seguem, neste arquivo, as implementações dos métodos definidos em `window.hpp`.

#### onCreate — linhas 5 a 32

-   Entre as linhas 7 e 21, são carregadas internamente nos programas, as informações dos shaders usados na aplicação;
-   Na linha 23, é definida a cor básica de fundo como cinza escuro (similar à cor de asfalto);
-   Entre as linhas 25 e 27, está expresso o condicional relacionado à presença ou não do Emscripten (replicado de exemplos anteriores);
-   Na linha 29, é "semeado" o gerador de números aleatórios com a informação do relógio;
-   Nas linhas 30 e 31, são invocados os métodos `create` dos objetos antes instanciados. No caso do asfalto (linha 30), o número base de pontos é de 54.000 - este número foi observado como proporcionando uma imagem um pouco realista num cenário de dimensões 700 x 700.

#### onUpdate — linhas 34 a 38

Este método carrega o valor de `deltaTime` (linha 36), permitindo que as ações sigam a progressão do tempo, e não da taxa de atualização dos quadros, usando este valor para atualizar a posição do carro (junto com o estado armazenado na estrutura de `appData`).

#### onPaint — linhas 40 a 47

Este método inicia-se seguindo os exemplos apresentados nas aulas (linhas 42 e 43) e , em seguida, invoca os métodos `paint()` dos objetos da aplicação (linhas 45 e 46).

#### onResize — linhas 49 a 53

Este método redimensiona os itens em tela, seguindo os exemplos apresentados nas aulas.

#### onEvent — linhas 55 a 80

Este método é o responsável por gerenciar a resposta da aplicação aos comandos do usuário. As setas do teclado, bem como as teclas 'W', 'S', 'A' e 'D', deslocam o carro pela superfície.
Entre as linhas 57 e 67, estão as definições de estado quando uma das teclas mencionadas é pressionada. Já entre as linhas 69 e 79, os estados são redefinidos quando as teclas são soltas.

#### onDestroy — linhas 82 a 89

Este método simplesmente chama a função que deleta os programas (linhas 84 e 85) e chama o método `destroy` dos objetos criados (linhas 87 e 88).

