#ifndef APPDATA_HPP
#define APPDATA_HPP

#include <bitset>
#include <array>

using namespace std;

enum class Input {DIREITA, ESQUERDA, CIMA, BAIXO, NOVO};

struct AppData
{
    bitset<5> input;
};


#endif