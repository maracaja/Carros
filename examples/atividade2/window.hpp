#ifndef WINDOW_HPP
#define WINDOW_HPP

#include <random>
#include "abcgOpenGL.hpp"
#include "asfalto.hpp"
#include "carro.hpp"
#include "appdata.hpp"

using namespace std;
using namespace glm;

class Window : public abcg::OpenGLWindow 
{
    protected:
        void onCreate() override;
        void onUpdate() override;
        void onPaint() override;
        void onResize(ivec2 const &size) override;
        void onEvent(SDL_Event const &event) override;
        void onDestroy() override;

    private:
        ivec2 tamanhoTela{};
        GLuint asfaltoProg{};
        GLuint carroProg{}; 
        AppData appData{};
        Carro carro;
        Asfalto asfalto;
        default_random_engine r;
};

#endif