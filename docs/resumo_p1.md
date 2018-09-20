# Resumo Prova 1 TP2

## TESTE

**SEMPRE** deve ser feito testes durante a criação de um programa.

> É a verificação feita sobre o sistema ou parte dele para garantir que determinada entrada sempre irá produzir a saída esperada.

Apenas testes não garantem a qualidade do sistema.
### TDD 

*Test Driven Development* (TDD) ou em português **Desenvolvimento guiado por testes** é uma técnica de desenvolvimento de software que se relaciona com o conceito de verificação e validação e se baseia em um ciclo curto de repetições: 
1. O desenvolvedor escreve um caso de teste que define uma melhoria desejada ou uma nova funcionalidade.
2. É produzido código que possa ser validado pelo teste
3. O código é refatorado para um código sob padrões aceitáveis.

#### Tutorial TDD

1. Criar testes
2. Forçar compilar
3. Não passar nos testes
4. Codar métodos
5. Passar nos testes

### Boas práticas na estruturação de testes

1. **Montagen de Cenário:** Ambiente necessário para que se possa realizar testes, é necessário conhecer os atributos e métodos mínimos que serão testados.
2. **Execução:** Executar o teste.
3. **Verificação:** Análise se a saída corresponde ao que era esperado.

### Técnicas de fazer testes
- **Caixa Branca:** existe conhecimento prévio sobre o código, se sabe o que deseja testar.
- **Caixa Preta:** não se conhece o código, deve-se colocar uma entrada e observar a saída.
- **Caixa Cinza:** apenas parte do código é conhecido, e não ele todo. ❓
- **Caixa Colorida:** :interrobang:

### Niveis de testes
#### Unitário
 O objetivo do teste unitário é encontrar falhas de funcionamento dentro de uma pequena parte do sistema, que funciona independente do todo. Normalmente ele é **realizado pelo programador** e os alvos são subrotinas, métodos, classes. Geralmente é automatizado. Nele é utilizada a técnica da **Caixa Branca**.

#### Integração
 O objetivo é validar a comunicação entre os componentes do sistema. Também normalmente **realizado pelo programador** e seus alvos são funcionalidades que envolvem a integração dos componentes. Com esse teste normalmente são encontradas falhas na trasmissão de dados. Geralmente é automatizado. Podem ser realizados durante a produção do sistema. Técnica da **Caixa Preta** (?).

#### Sistema
 Objetiva executar o sistama sob pornto de vista do usuário final, varrendo as funciolidades em busca de falhas em relação aos objetivos originais. **Executado pela equipe de teste**. Esse tipo de teste é realizado após a conclusão do sistema. Normalmente utilizada a técnica da **Caixa Preta**.

#### Aceitação
 Praticamente igual ao teste de Sistema, porém os testadores são um **grupo seleto de usuário finais** do sistema, que simulam a rotina que eles teriam durante a utilização do sistema e verificam se o comportamento está conforme o esperado. *Vê se aceita ou não*. Técnica da **Caixa Preta**.

#### Alpha
 Objetiva executar o sistema de forma não planejada, sob ponto de vista do usuário final, também com um **grupo pequeno de usuário finais**. Ele busca indentificar possíveis erros não detectados até o momento, que podem ser encontrados enquanto o usuário utiliza de forma natural o sistema. A equipe de desenvolvimento deve acompanhar de perto os testes afim de corrigir as falhas e melhorar certos pontos. *Tipo quando o jogo é disponibilizado em Alpha*. **Caixa Preta**

#### Beta
 Tipo alpha, só que atinge um **número maior de pessoas** e os usuário que reportar os erros para a equipe de desenvolvimento, ou seja, a equipe não acompanha nem coleta os erros como no Teste Alpha. *Tipo um jogo em Beta*. **Caixa Preta**

#### Regressão
 O objetivo desse teste é reexecutar os tester após as alterações serem realizadas no sistema, afim de conferir se tudo continua funcionando corretamente. Consiste em aplicar a cada nova versão, todos os testes que já foram aplicados nas versões anteriores. Testes automáticos fazem muita diferença nesta etapa.

### Tipos de Testes
- Funcionalidade: *ver se ta funcionando tudo*.
- Desempenho: analisar o tempo de resposta de um sistema e se é satisfatório.
- Usabilidade: validar a experiência de ususário.
- Seguraça: validar a proteção do sistema contra invasões.
- Portabilidade: *ver se o sistema funciona em diferentes plataformas*.
- Stress: validar se funciona em condições extremas - i.e *matriculaweb no 1º dia de matricula*

### Analise Estática X  Dinâmica

#### Estática
Analisar o código sem executa-lo, verificando se boas praticas foram adotadas. **Caixa Branca**.
- exemplo:
    - Variáveis e constantes possuem boa nomenclatura?
    - Código está documentado?
    - Código está organizado e com boa legibilidade?
    - Existem possíveis NullPointers não tratados pelo programador?
    - O programador obedeceu à arquitetura do sistema ao codificar?
    - As conexões com o banco de dados estão sendo fechadas após utilizadas?

#### Dinâmica
Valida o sistema através de execuções. Método *maratona de programação*, se insere as entradas, executa e confere a saída, se forem como o esperado :+1:

#### As análises estáticas e dinâmicas se complementam :sunglasses:

### BeforeAll, Before, test, After, AfterAll
Comandos do Framework de testes JUnit. 

**BeforeAll** - Executado apenas 1 vez antes de todos os testes. Deve garantir as condições mínimas para a suíte de testes.

**Before** - Executado antes de cada *test* que esteja abaixo de um Before (a não ser que tenha mais de um Before). Deve gerantir as condições para os testes que serão realizados.

**test** - O teste propriamente dito

**After** - Funciona da mesma maneira que o Before, mas é executado *depois* de cada teste. Serve para limpar valores ou desfazer mudanças que o teste fez.

**AfterAll** - Funciona como o BeforeAll mas é executado 1 vez ao final de todos os testes. Serve para eliminar qualquer valor que ainda tenha sido alterado pela suíte de teste, ou talvez fazer estatísticas de tempo/desempenho da suíte de testes.
