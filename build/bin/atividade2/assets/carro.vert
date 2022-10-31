#version 300 es

layout(location = 0) in vec2 posicao;

uniform vec4 cor;
uniform float rotacao;
uniform float escala;
uniform vec2 deslocamento;

out vec4 fragColor;

void main() 
{
    float seno = sin(rotacao);
    float cosseno = cos(rotacao);
    vec2 rot = vec2(posicao.x * cosseno - posicao.y * seno, posicao.x * seno + posicao.y * cosseno);
    gl_Position = vec4(vec2(escala * rot.x + deslocamento.x, escala * rot.y + deslocamento.y), 0, 1);
    fragColor = cor;
}
