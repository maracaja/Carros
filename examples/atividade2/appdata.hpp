#ifndef APPDATA_HPP
#define APPDATA_HPP

#include <bitset>
#include <array>

using namespace std;

enum class Input {DIREITA, ESQUERDA, CIMA, BAIXO};

struct AppData
{
    bitset<4> input;
};

#endif
