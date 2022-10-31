#ifndef CARRO_HPP
#define CARRO_HPP

#include <random>
#include "abcgOpenGL.hpp"
#include "appdata.hpp"

using namespace std;
using namespace glm;

class Carro 
{
    public:
        void create(GLuint prog);
        void paint();
        void destroy();
        void update(const AppData &appData, float deltaTime);

        vec4 cor{}, corAsa{};
        float rotacao{};
        float escala{0.11f};
        vec2 deslocamento{};

    private:
        GLuint program{};
        GLint deslLoc{};
        GLint corLoc{};
        GLint escLoc{};
        GLint rotLoc{};

        GLuint VAO{};
        GLuint VBO{};
        GLuint EBO{};

        default_random_engine r;
        void novasCores();
};

#endif
