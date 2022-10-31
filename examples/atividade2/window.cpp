#include "window.hpp"

using namespace gsl;

void Window::onCreate() 
{
    auto const assetsPath{abcg::Application::getAssetsPath()};

    // Cria programa que renderiza carro
    carroProg = abcg::createOpenGLProgram
    ({
        {.source = assetsPath + "carro.vert", .stage = abcg::ShaderStage::Vertex},
        {.source = assetsPath + "carro.frag", .stage = abcg::ShaderStage::Fragment}
    });

    // Cria programa que renderiza a textura de asfalto
    asfaltoProg = abcg::createOpenGLProgram
    ({
        {.source = assetsPath + "asfalto.vert", .stage = abcg::ShaderStage::Vertex},
        {.source = assetsPath + "asfalto.frag", .stage = abcg::ShaderStage::Fragment}
    });

    abcg::glClearColor(0.2f, 0.2f, 0.2f, 1); // Cor base: cinza escuro

    #if !defined(__EMSCRIPTEN__)
        abcg::glEnable(GL_PROGRAM_POINT_SIZE);
    #endif

    r.seed(chrono::steady_clock::now().time_since_epoch().count());
    asfalto.create(asfaltoProg, 54000);
    carro.create(carroProg);
}

void Window::onUpdate()
{
    auto const deltaTime{narrow_cast<float>(getDeltaTime())};
    carro.update(appData, deltaTime); 
}

void Window::onPaint() 
{
    abcg::glClear(GL_COLOR_BUFFER_BIT);
    abcg::glViewport(0, 0, tamanhoTela.x, tamanhoTela.y);

    asfalto.paint();
    carro.paint();
}

void Window::onResize(ivec2 const &size) 
{
    tamanhoTela = size;
    abcg::glClear(GL_COLOR_BUFFER_BIT);
}

void Window::onEvent(const SDL_Event &event)
{
    if (event.type == SDL_KEYDOWN) 
    {
        if (event.key.keysym.sym == SDLK_UP || event.key.keysym.sym == SDLK_w)
            appData.input.set(narrow<size_t>(Input::CIMA));
        if (event.key.keysym.sym == SDLK_DOWN || event.key.keysym.sym == SDLK_s)
            appData.input.set(narrow<size_t>(Input::BAIXO));
        if (event.key.keysym.sym == SDLK_LEFT || event.key.keysym.sym == SDLK_a)
            appData.input.set(narrow<size_t>(Input::ESQUERDA));
        if (event.key.keysym.sym == SDLK_RIGHT || event.key.keysym.sym == SDLK_d)
            appData.input.set(narrow<size_t>(Input::DIREITA));
    }

    if (event.type == SDL_KEYUP) 
    {
        if (event.key.keysym.sym == SDLK_UP || event.key.keysym.sym == SDLK_w)
            appData.input.reset(narrow<size_t>(Input::CIMA));
        if (event.key.keysym.sym == SDLK_DOWN || event.key.keysym.sym == SDLK_s)
            appData.input.reset(narrow<size_t>(Input::BAIXO));
        if (event.key.keysym.sym == SDLK_LEFT || event.key.keysym.sym == SDLK_a)
            appData.input.reset(narrow<size_t>(Input::ESQUERDA));
        if (event.key.keysym.sym == SDLK_RIGHT || event.key.keysym.sym == SDLK_d)
            appData.input.reset(narrow<size_t>(Input::DIREITA));
    }
}

void Window::onDestroy() 
{
    abcg::glDeleteProgram(asfaltoProg);
    abcg::glDeleteProgram(carroProg);

    carro.destroy();
    asfalto.destroy();
}
