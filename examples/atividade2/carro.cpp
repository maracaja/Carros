#include "carro.hpp"

using namespace gsl;

void Carro::create(GLuint prog) 
{
    destroy();

    program = prog;
    r.seed(chrono::steady_clock::now().time_since_epoch().count());
    novasCores();

    // Localização das variáveis no programa
    corLoc = abcg::glGetUniformLocation(program, "cor");
    rotLoc = abcg::glGetUniformLocation(program, "rotacao");
    escLoc = abcg::glGetUniformLocation(program, "escala");
    deslLoc = abcg::glGetUniformLocation(program, "deslocamento");

    // Posicoes iniciais
    rotacao = 0.0f;
    deslocamento = vec2(0);

    // Vértices que definem o formato do carro
    array pos
    {
        // Asa traseira
        vec2{-0.48f, -0.9f}, vec2{-0.48f, -1.2f},
        vec2{0.48f, -0.9f}, vec2{0.48f, -1.2f},

        // Asa dianteira
        vec2{-0.64f, 1.2f}, vec2{-0.64f, 0.95f}, vec2{-0.04f, 1.2f},
        vec2{0.64f, 1.2f}, vec2{0.64f, 0.95f}, vec2{0.04f, 1.2f},
        vec2{-0.16f, 1.15f}, vec2{-0.04f, 1.15f},
        vec2{0.16f, 1.15f}, vec2{0.04f, 1.15f},

        // Corpo do carro
        vec2{-0.16f, 0.85f}, vec2{0.0f, 0.85f}, vec2{0.16f, 0.85f},
        vec2{-0.16f, 0.25f}, vec2{0.16f, 0.25f},
        vec2{-0.16f, 0.45f}, vec2{0.16f, 0.45f},
        vec2{-0.52f, 0.25f}, vec2{0.52f, 0.25f},
        vec2{-0.52f, 0.0f}, vec2{0.52f, 0.0f},
        vec2{-0.28f, -0.45f}, vec2{0.0f, -0.45f}, vec2{0.28f, -0.45f},
        vec2{-0.28f, -0.9f}, vec2{0.28f, -0.9f},

        // Eixo traseiro esquerdo
        vec2{-0.4f, -0.6f}, vec2{-0.4f, -0.7f},
        vec2{-0.28f, -0.6f}, vec2{-0.28f, -0.7f},

        // Eixo traseiro direito
        vec2{0.4f, -0.6f}, vec2{0.4f, -0.7f},
        vec2{0.28f, -0.6f}, vec2{0.28f, -0.7f},

        // Eixo frontal esquerdo
        vec2{-0.16f, 0.75f}, vec2{-0.16f, 0.55f}, vec2{-0.28f, 0.65f},
        vec2{-0.4f, 0.75f}, vec2{-0.4f, 0.55f},

        // Eixo frontal direito
        vec2{0.16f, 0.75f}, vec2{0.16f, 0.55f}, vec2{0.28f, 0.65f},
        vec2{0.4f, 0.75f}, vec2{0.4f, 0.55f},

        // Roda frontal esquerda
        vec2{-0.64f, 0.85f}, vec2{-0.64f, 0.45f},
        vec2{-0.4f, 0.85f}, vec2{-0.4f, 0.45f},

        // Roda frontal direita
        vec2{0.64f, 0.85f}, vec2{0.64f, 0.45f},
        vec2{0.4f, 0.85f}, vec2{0.4f, 0.45f},

        // Roda traseira esquerda
        vec2{-0.64f, -0.85f}, vec2{-0.64f, -0.45f},
        vec2{-0.4f, -0.85f}, vec2{-0.4f, -0.45f},

        // Roda traseira direita
        vec2{0.64f, -0.85f}, vec2{0.64f, -0.45f},
        vec2{0.4f, -0.85f}, vec2{0.4f, -0.45f},
    };

    // Definição dos triângulos
    array const indices
    {
        // Asa traseira
        0, 1, 2,
        1, 2, 3,

        // Asa dianteira
        4, 5, 9,
        6, 7, 8,
        6, 10, 11,
        9, 12, 13,
        9, 10, 12,
        10, 12, 13,

        // Corpo do carro
        11, 14, 15,
        11, 13, 15,
        13, 15, 16,
        14, 17, 18,
        14, 16, 18,
        17, 19, 21,
        18, 20, 22,
        17, 21, 23,
        18, 22, 24,
        17, 23, 25,
        18, 24, 27,
        17, 25, 26,
        18, 26, 27,
        17, 18, 26,
        25, 28, 29,
        25, 27, 29,

        // Eixo traseiro esquerdo
        30, 31, 32,
        31, 32, 33,

        // Eixo traseiro direito
        34, 35, 36,
        35, 36, 37,

        // Eixo frontal esquerdo
        38, 39, 40,
        40, 41, 42,

        // Eixo frontal direito
        43, 44, 45,
        45, 46, 47,

        // Roda frontal esquerda    
        48, 49, 50,
        49, 50, 51,

        // Roda frontal direita
        52, 53, 54,
        53, 54, 55,

        // Roda traseira esquerda
        56, 57, 58,
        57, 58, 59,

        // Roda traseira direita
        60, 61, 62,
        61, 62, 63
    };

    // Criação do VBO
    abcg::glGenBuffers(1, &VBO);
    abcg::glBindBuffer(GL_ARRAY_BUFFER, VBO);
    abcg::glBufferData(GL_ARRAY_BUFFER, sizeof(pos), pos.data(), GL_STATIC_DRAW);
    abcg::glBindBuffer(GL_ARRAY_BUFFER, 0);

    // Criação do EBO
    abcg::glGenBuffers(1, &EBO);
    abcg::glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    abcg::glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices.data(), GL_STATIC_DRAW);
    abcg::glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

    auto const posicao{abcg::glGetAttribLocation(program, "posicao")};

    // Criação do VAO
    abcg::glGenVertexArrays(1, &VAO);
    abcg::glBindVertexArray(VAO);
    abcg::glEnableVertexAttribArray(posicao);

    abcg::glBindBuffer(GL_ARRAY_BUFFER, VBO);
    abcg::glVertexAttribPointer(posicao, 2, GL_FLOAT, GL_FALSE, 0, nullptr);
    abcg::glBindBuffer(GL_ARRAY_BUFFER, 0);
    abcg::glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    abcg::glBindVertexArray(0);
}

void Carro::paint(/*const AppData &appData*/) 
{
    abcg::glUseProgram(program);
    abcg::glBindVertexArray(VAO);

    abcg::glUniform1f(escLoc, escala);
    abcg::glUniform1f(rotLoc, rotacao);
    abcg::glUniform2fv(deslLoc, 1, &deslocamento.x);

    // Pinta o carro de preto
    abcg::glUniform4f(corLoc, 0, 0, 0, 1.0f);
    abcg::glDrawElements(GL_TRIANGLES, 40 * 3, GL_UNSIGNED_INT, nullptr);

    // Pinta o corpo do carro na cor sorteada, mantendo os pneus pretos
    abcg::glUniform4f(corLoc, cor.x, cor.y, cor.z, cor.w);
    abcg::glDrawElements(GL_TRIANGLES, 32 * 3, GL_UNSIGNED_INT, nullptr);

    // Pinta a asa traseira de uma cor diferente do restante do carro
    abcg::glUniform4f(corLoc, corAsa.x, corAsa.y, corAsa.z, corAsa.w);
    abcg::glDrawElements(GL_TRIANGLES, 2 * 3, GL_UNSIGNED_INT, nullptr);

    abcg::glBindVertexArray(0);
    abcg::glUseProgram(0);
}

void Carro::destroy() 
{
    abcg::glDeleteBuffers(1, &VBO);
    abcg::glDeleteBuffers(1, &EBO);
    abcg::glDeleteVertexArrays(1, &VAO);
}

void Carro::update(const AppData &appData, float deltaTime)
{
    float rot1, rot2;
    
    // Calcula deslocamento do carro e sua orientação de acordo com a tecla pressionada
    if (appData.input[narrow<size_t>(Input::CIMA)])
    {
        deslocamento = vec2(deslocamento.x, deslocamento.y + deltaTime);
        rot1 = appData.input[narrow<size_t>(Input::ESQUERDA)] ? M_PI / 4 : 0;
        rot2 = appData.input[narrow<size_t>(Input::DIREITA)] ? -M_PI / 4 : 0;
        rotacao = 0.0f + rot1 + rot2;
    }
    if (appData.input[narrow<size_t>(Input::BAIXO)])
    {
        deslocamento = vec2(deslocamento.x, deslocamento.y - deltaTime);
        rot1 = appData.input[narrow<size_t>(Input::ESQUERDA)] ? -M_PI / 4 : 0;
        rot2 = appData.input[narrow<size_t>(Input::DIREITA)] ? M_PI / 4 : 0;
        rotacao = M_PI + rot1 + rot2;
    }
    if (appData.input[narrow<size_t>(Input::ESQUERDA)])
    {
        deslocamento = vec2(deslocamento.x - deltaTime, deslocamento.y);
        rot1 = appData.input[narrow<size_t>(Input::CIMA)] ? -M_PI / 4 : 0;
        rot2 = appData.input[narrow<size_t>(Input::BAIXO)] ? M_PI / 4 : 0;
        rotacao = M_PI / 2 + rot1 + rot2;
    }
    if (appData.input[narrow<size_t>(Input::DIREITA)])
    {
        deslocamento = vec2(deslocamento.x + deltaTime, deslocamento.y);
        rot1 = appData.input[narrow<size_t>(Input::CIMA)] ? M_PI / 4 : 0;
        rot2 = appData.input[narrow<size_t>(Input::BAIXO)] ? -M_PI / 4 : 0;
        rotacao = -M_PI / 2 + rot1 + rot2;
    }

    // Se sair da tela, faz reaparecer do outro lado com novas cores
    if (deslocamento.x > 1.0f) 
    {
        deslocamento.x -= 2.0f;
        novasCores();
    }
    if (deslocamento.x < -1.0f) 
    {
        deslocamento.x += 2.0f;
        novasCores();
    }
    if (deslocamento.y > 1.0f)
    {
        deslocamento.y -= 2.0f;
        novasCores();
    }
    if (deslocamento.y < -1.0f)
    {
        deslocamento.y += 2.0f;
        novasCores();
    }
}

void Carro::novasCores()
{
    // Seleciona aleatoriamente canais R, G e B
    uniform_real_distribution canal(0.0f, 1.0f);
    cor = vec4(canal(r), canal(r), canal(r), 1.0f);
    corAsa = vec4(canal(r), canal(r), canal(r), 1.0f);
}