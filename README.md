# Semáforo_Lab

Projeto de aprendizado: lógica de um semáforo em Structured Text (IEC 61131-3), criada e testada na plataforma Autonomy Logic (OpenPLC Editor).

## Como funciona
- Ciclo: vermelho (5 s), verde (5 s), amarelo (2 s).
- Começa no vermelho.
- Usa uma variável de estado, um temporizador TON e três saídas (luz_verde, luz_amarela, luz_vermelha).

## Arquivos
- main.st: código do programa.
- semaforo_lab.html: animação visual que reproduz a mesma lógica. Não está ligada à plataforma.

## Testes (QA)
- Compilação sem erros.
- Teste no Debugger: sequência vermelho, verde, amarelo e vermelho confirmada.
- Só uma luz acesa de cada vez.

## Observações
Não foi possível integrar com Modbus ou HMI externa, porque o simulador roda na web e não expõe porta no computador local.
