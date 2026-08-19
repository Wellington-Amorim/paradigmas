# Lista de exercícios - Aula 2

## Evolução das Principais Linguagens de Programação
### 20 questões autorais baseadas no capítulo 2; não reproduzem exercícios da bibliografia.

**1. A genealogia das linguagens não é uma escada de progresso.
Explique essa afirmação e apresente dois fatores históricos que fazem
uma linguagem influenciar outra sem necessariamente substituí-la.**
> Objetivos: obj01, obj05 · Referência: Sebesta, cap. 2, páginas PDF 50, 51.
``` 
A afirmação em questão, informa que as novas liguagens, assim que lançadas,
tornam as linguagens antigas obsoletas/ultrapassadas, trazendo consigo
as caracterias das tecnologias antigas e as melhorando, em todos os ponto.
Entretanto, é uma afirmação redondamente errada, já que todas as linguagens
possuim uma especificidade para resolver um problemas. Com isso, as liguagens
antigas e as mais recentes podem conviverem juntas e em pé de igualdade,
sem substituir uma a outra.

Exemplos Históricos:
- O LISP (focado em Inteligência Artificial e processamento 
de listas) e o Fortran (focado em computação científica e matemática) 
influenciaram diversas linguagens subsequentes com seus conceitos estruturais. 
No entanto, linguagens comerciais baseadas em outras necessidades (como o COBOL 
para processamento de dados empresariais) surgiram e dominaram seu próprio 
espaço. Nenhuma dessas três substituiu a outra em seus anos de glória, pois 
cada uma era a "ferramenta certa para o trabalho certo" em seu respectivo domínio.

- A linguagem C influenciou fortemente a sintaxe e as estruturas de controle 
de linguagens orientadas a objetos posteriores, como C++, Java e JavaScript. 
Contudo, essas novas linguagens não substituíram o C. Devido à sua extrema 
eficiência, controle de memória e vasta base de código existente (especialmente 
em sistemas operacionais e sistemas embarcados), o C continuou sendo o padrão 
ouro para programação de sistemas, enquanto as linguagens "filhas" dominaram o 
desenvolvimento web, mobile e de aplicações corporativas. 
```

**2. Plankalkül não foi implementada em sua época. Ainda assim, por que
ela é relevante para a história das linguagens? Cite três recursos
antecipados por seu projeto e explique o valor de um deles.**
> Objetivos: obj01, obj02 · Referência: Sebesta, cap. 2, páginas PDF 52, 53. 
```
A Plankalkül é relevante porque foi a primeira linguagem de programação de alto 
nível projetada na história. Mesmo não tendo sido implementada na época (devido 
à Segunda Guerra Mundial e à falta de hardware), ela provou ser possível expressar 
algoritmos de forma abstrata e estruturada, independentemente do código de máquina.
Três recursos antecipados por ela foram:
-Estruturas de dados hierárquicas (matrizes e registros).
-Estruturas de repetição (loops iterativos).
-Estruturas de seleção condicional.
O valor das estruturas de dados hierárquicas, como os registros, é a capacidade de
 abstração: elas permitem que o programador agrupe dados logicamente relacionados 
sob uma única entidade, reduzindo a complexidade cognitiva e facilitando a modelagem 
de problemas do mundo real na programação.`
```

**3. Compare Short Code, Speedcoding e os sistemas A-0/A-1/A-2 quanto
ao problema enfrentado e à estratégia adotada. Por que chamá-los
simplesmente de compiladores modernos seria impreciso?**
> Objetivos: obj01, obj02 · Referência: Sebesta, cap. 2, páginas PDF 53, 56.
```
O problema central enfrentado por todos esses sistemas era a extrema dificuldade, 
lentidão e propensão a erros da programação direta em código de máquina. A estratégia 
adotada pelo Short Code (1949) e pelo Speedcoding (1954) foi a interpretação. Eles 
permitiam escrever em pseudocódigo mais próximo de expressões matemáticas, mas 
a execução era feita por um interpretador (traduzindo e executando instrução por instrução 
na hora), o que tornava a execução do programa muito lenta. Já a estratégia dos sistemas 
A-0, A-1 e A-2 (criados por Grace Hopper) envolvia uma forma primitiva de compilação que 
funcionava mais como um processo de vinculação (linking). O sistema lia o pseudocódigo e 
expandia chamadas montando sequências de sub-rotinas de linguagem de máquina que já 
estavam prontas em uma biblioteca. Chamá-los de "compiladores modernos" seria impreciso 
porque eles não realizavam as tarefas de um compilador atual. Os interpretadores não 
geravam código objeto otimizado, e os sistemas da série A atuavam mais como 
macro-expansores que apenas agrupavam blocos de código já existentes, sem realizar a 
tradução sintática e semântica de estruturas de alto nível para linguagem de máquina 
pura e otimizada.
``` 

**4. Explique por que o projeto Fortran precisou convencer
programadores de que código traduzido podia competir com código de
máquina escrito à mão. Relacione desempenho, custo de programação
e adoção.**
> Objetivos: obj01, obj02, obj04 · Referência: Sebesta, cap. 2, páginas PDF 56, 60.
```
Na década de 1950, o tempo de processamento dos computadores (hardware) era caríssimo, 
enquanto o custo do tempo dos programadores era considerado menos crítico. Por conta disso, 
os programadores escreviam e otimizavam códigos de máquina à mão para extrair o máximo de 
desempenho, e viam com profundo ceticismo os sistemas de tradução automática (como os 
interpretadores anteriores), pois geravam códigos ineficientes e lentos. O projeto Fortran precisou 
focar primordialmente na eficiência do código compilado para convencer esses profissionais. 
A única forma de a linguagem ganhar adoção seria se o compilador provasse ser capaz de gerar 
um código objeto que rodasse tão rápido quanto aquele escrito por um programador humano 
experiente. Quando o compilador do Fortran I cumpriu essa promessa, a relação de custo foi 
revolucionada: o desempenho da máquina foi mantido, mas o custo de programação (esforço 
e tempo de desenvolvimento) despencou drasticamente. Essa combinação de alta performance 
com a facilidade de escrita foi o fator decisivo para a massiva adoção do Fortran.
```

**5. Lisp surgiu em um contexto diferente de Fortran. Compare os
domínios, a representação de dados e o estilo de computação
favorecido pelas duas linguagens.**
> Objetivos: obj02, obj03 · Referência: Sebesta, cap. 2, páginas PDF 61, 65.
```
Domínios: O Fortran foi criado para a computação científica, engenharia e resolução de equações 
matemáticas. Já o Lisp foi desenvolvido para o campo emergente da Inteligência Artificial, focado 
especificamente no processamento simbólico e na manipulação de expressões de linguagem, não 
em cálculos numéricos. Representação de dados: O Fortran estruturava seus dados de forma rígida 
através de variáveis escalares e matrizes (arrays) de números em ponto flutuante e inteiros. 
O Lisp revolucionou ao introduzir listas encadeadas (linked lists) e átomos (símbolos) como 
sua estrutura principal de dados, permitindo a alocação dinâmica de memória. Estilo de computação: 
O Fortran consagrou o estilo de programação imperativa (baseado na arquitetura de von Neumann), 
focado na execução sequencial de passos, laços de repetição e intenso uso de comandos de atribuição 
para alterar o estado da memória. O Lisp, por outro lado, introduziu o estilo de programação funcional, 
onde a computação não é feita alterando estados ou variáveis, mas sim pela avaliação matemática de 
funções, com forte ênfase na recursividade e no conceito de que código e dados compartilham a 
mesma forma estrutural.
``` 

**11. Construa uma cadeia de influência que passe por ALGOL, Pascal e
C. Depois contraste essa linhagem imperativa com a proposta
declarativa de Prolog.**
> Objetivos: obj02, obj03 · Referência: Sebesta, cap. 2, páginas PDF 88, 93.
``` 
ALGOL 60 → Pascal → C: o ALGOL 60 influenciou o desenvolvimento de Pascal, principalmente
pela estrutura de blocos, tipos e comandos estruturados. Pascal, por sua vez, influenciou C,
especialmente na organização sintática e no uso de estruturas de controle.
Linhagem imperativa: ALGOL, Pascal e C seguem principalmente o paradigma imperativo, no qual
o programa descreve como os dados devem ser manipulados por meio de comandos, atribuições e
mudanças de estado.
Prolog: segue uma proposta declarativa, na qual o programador descreve o que deve ser
verdadeiro por meio de fatos e regras; o sistema utiliza inferência lógica para encontrar soluções.
Contraste: enquanto a linhagem ALGOL → Pascal → C enfatiza procedimentos e sequência de ações,
o Prolog enfatiza relações, fatos e regras, representando uma abordagem diferente para expressar
problemas computacionais.
``` 

**12. Modele em linguagem natural uma pequena base Prolog com dois
fatos, uma regra e uma consulta. Explique por que isso representa
programação lógica, não apenas armazenamento de dados.**
> Objetivos: obj02, obj03 · Referência: Sebesta, cap. 2, páginas PDF 93, 94.
``` 
Fato 1: João é pai de Maria.
Fato 2: Maria é mãe de Ana.
Regra: Se alguém é pai ou mãe de uma pessoa, então essa pessoa é filha ou filho dessa pessoa.
Consulta: João é avô de Ana?
Por que é programação lógica? Porque a base não apenas armazena dados: ela contém fatos e regras
que permitem ao sistema inferir novas informações a partir dos dados existentes. A consulta solicita
uma conclusão que é obtida por meio de raciocínio lógico, característica fundamental da programação lógica.
```

**13. Ada resultou de requisitos e projeto em grande escala. Analise como
confiabilidade, tipos, pacotes e concorrência se relacionam ao domínio
de sistemas críticos.**
> Objetivos: obj02, obj04 · Referência: Sebesta, cap. 2, páginas PDF 94, 98.
``` 
Confiabilidade: Ada foi projetada para aplicações em que erros podem causar consequências graves,
 oferecendo recursos para tratamento de exceções e maior controle do comportamento do programa.
Tipos: seu sistema de tipos contribui para detectar erros durante a compilação, aumentando a
segurança e a confiabilidade do software.
Pacotes: permitem encapsulamento e abstração de dados, facilitando a organização, manutenção e
reutilização do código.
Concorrência: o mecanismo de tarefas e rendezvous permite executar atividades simultaneamente e
realizar comunicação e sincronização entre elas, algo essencial em sistemas embarcados e de tempo real.
Relação com sistemas críticos: esses recursos trabalham em conjunto para tornar o software mais
previsível, seguro, modular e confiável, características importantes em áreas como aviônica, controle
de tráfego aéreo e transporte ferroviário.
``` 

**14. Compare o papel dos objetos em Smalltalk, C++ e Java. Inclua na
resposta o compromisso de C++ com C e a estratégia de portabilidade
de Java.**
> Objetivos: obj02, obj03 · Referência: Sebesta, cap. 2, páginas PDF 98, 103.
``` 
Smalltalk: tudo é tratado como objeto, e a computação ocorre pelo envio de mensagens aos objetos,
sendo uma linguagem totalmente orientada a objetos.
C++: combina programação procedural e orientada a objetos. Seus objetos são organizados por classes,
herança e métodos, mas a linguagem mantém forte compromisso com C, buscando compatibilidade e baixo
impacto no desempenho.
Java: adota a orientação a objetos de forma mais uniforme que C++, eliminando diversos recursos
inseguros de C/C++. Sua principal estratégia de portabilidade é a execução do código por uma máquina
virtual (JVM), permitindo que o mesmo programa seja executado em diferentes plataformas.
Contraste: Smalltalk prioriza a uniformidade dos objetos; C++ busca combinar objetos com compatibilidade
e desempenho de C; Java prioriza orientação a objetos, segurança e portabilidade.
``` 

**15. A primeira aplicação de Java não foi a Web, mas a Web impulsionou
sua adoção. Explique como mudanças de contexto podem reposicionar
uma linguagem.**
> Objetivos: obj01, obj02, obj04 · Referência: Sebesta, cap. 2, páginas PDF 103, 107.
``` 
Contexto inicial: Java foi criada para dispositivos eletrônicos de consumo, buscando maior simplicidade,
confiabilidade e segurança que C++.
Mudança de contexto: esses produtos não chegaram a ser comercializados, mas, com a expansão da World Wide
Web, Java encontrou uma nova aplicação nos applets, executados em navegadores.
Reposicionamento: a linguagem passou de uma solução para sistemas embarcados para uma ferramenta importante
de programação para a Web.
Conclusão: uma linguagem pode ser projetada para um problema e ganhar destaque em outro quando surge um novo
contexto tecnológico que aproveita suas características. No caso de Java, a portabilidade, simplicidade e
segurança ajudaram a impulsionar sua adoção na Web.
``` 
