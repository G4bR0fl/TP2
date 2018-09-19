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
- **Unitário** → O teste unitário tem como objetivo encontrar pequenas falhas isoladas dentro do sistema, ou seja, partes do sistema que funcionam independente do todo. (Ex.: Classes, módulos e subrotinas) → É utilizada a técnica da Caixa Branca.
- **Integração** → O teste de integração tem como objetivo principal validar a comunicação entre componentes do sistema. Os alvos para tal, são funcionalidades que envolvem a integração de componentes. Geralmente suas falhas são de transmissão de dados.
  São feitos pelos programadores. (Ex.: 'A' invoca um método de 'B' esperando um valor inteiro, porém vem um valor decimal, causando uma falha no componente A).
- **Sistema** → O teste de sistema tem como objetivo executar o sistema sob ponto de vista do usuário final, varrendo as funcionalidades em busca de falhas em relação aos objetivos originais. → É normalmente utilizado a técnica da Caixa Preta.
  Normalmente requerem cenários de teste coerentes com os requisitos especificados para o sistema. Além disso, só são realizados quando a codificação do sistema já foi concluída.
- **Aceitação** →  Exatamente o mesmo objetivo do teste de sistema (Ambos estão iguais no slide).
  O planejamento e a execução é feita por um grupo restrito de usuários finais do sistema. Os quais fazem simulações de operações de rotina do sistema, para ver se está condizente com o que foi solicitado. 
- **Alpha** → O principal objetivo do teste alfa é executar o sistema de forma não planejada, sob ponto de vista do usuário final.    Contanto, com um **número restrito de pessoas**. O grupo de usuários que vai testar, normalmente são os próprios membros da        empresa e o cliente final. O teste alfa consiste na identificação de erros não detectados até o momento, os quais vão sendo        encontrandos, quanto mais usuários utilizam o sistema final.
- **Beta** → Tem o objetivo parecido com o teste alfa, só que a diferença é que a execução não planejada do sistema é feita por um número grande de pessoas. 
   Visa a identificação de possíveis erros não detectados até o momento, encontrados quanto mais usuários finais utilizam o sistema de forma natural, sem planejamento. Nesse caso, pelo contrário do teste alfa, o time de programadores não farão parte da coleta de erros e no acompanhamento. Nesse caso os usuários que reportam os erros encontrados.
- **Regressão** → O teste de regressão tem como objetivo reexecutar os testes após alterações serem realizadas no sistema, para ver se tudo continua funcionando de acordo. Normalmente tal teste é feito, a cada versão nova de um software lançado, todos os testes feitos anteriormente são feitos novamente na versão nova. → Neste caso os testes automáticos fazem muita diferença.