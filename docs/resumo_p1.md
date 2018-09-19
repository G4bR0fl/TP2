# Resumo Prova 1 TP2

## TESTE

**SEMPRE** deve ser feito testes durante a criação de um programa.

### TDD

*Test Driven Development* (TDD) ou em português **Desenvolvimento guiado por testes** é uma técnica de desenvolvimento de software que se relaciona com o conceito de verificação e validação e se baseia em um ciclo curto de repetições: 
1. O desenvolvedor escreve um caso de teste que define uma melhoria desejada ou uma nova funcionalidade.
2. É produzido código que possa ser validado pelo teste
3. O código é refatorado para um código sob padrões aceitáveis.

### Boas práticas na estruturação de testes

1. **Montagen de Cenário:** Ambiente necessário para que se possa realizar testes, é necessário conhecer os atributos e métodos mínimos que serão testados.
2. **Execução:** Executar o teste.
3. **Verificação:** Análise se a saída corresponde ao que era esperado.

### Técnicas de fazer testes
- **Caixa Branca:** existe conhecimento prévio sobre o código, se sabe o que deseja testar.
- **Caixa Preta:** não se conhece o código, deve-se colocar uma entrada e observar a saída.
- **Caixa Cinza:** ...
- **Caixa Colorida:** ...

### Niveis de testes
- **Unitário** → O teste unitário tem como objetivo encontrar pequenas falhas isoladas dentro do sistema, ou seja, partes do sistema que funcionam independente do todo. (Ex.: Classes, módulos e subrotinas) → é utilizada a técnica da Caixa Branca.
- **Integração** → O teste de integração tem como objetivo principal validar a comunicação entre componentes do sistema. Os alvos para tal, são funcionalidades que envolvem a integração de componentes. Geralmente suas falhas são de transmissão de dados.
- **Sistema** → ... é normalmente utilizado a técnica da Caixa Preta.
- **Aceitação** → ...
- **Alpha** → ...
- **Beta** → ...
- **Regressão** → ...