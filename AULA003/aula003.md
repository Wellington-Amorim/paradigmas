# Atividade 3: Derivação de um Código a partir da Gramática Formal

## Regras da Atividade (Enunciado)
**Objetivo:** Pesquisar e analisar a gramática formal de uma linguagem de programação, identificando suas principais regras de produção e utilizando-as para realizar a derivação de um trecho de código válido. 

A atividade tem como objetivo relacionar os conceitos de gramáticas formais, símbolos terminais e não terminais, produções e derivação com linguagens de programação reais.

**Passos exigidos:**
1. Escolher uma linguagem de programação.
2. Pesquisar a gramática formal da linguagem.
3. Identificar a fonte da gramática.
4. Selecionar as produções necessárias.
5. Definir o código a ser gerado.
6. Realizar a derivação passo a passo.
7. Apresentar o resultado e classificar os símbolos.

---

## Resolução da Atividade

### 1. Identificação da Fonte da Gramática
- **Linguagem escolhida:** Go (Golang)
- **Fonte / Documentação consultada:** [The Go Programming Language Specification](https://go.dev/ref/spec)
- **Notação utilizada:** EBNF (*Extended Backus-Naur Form*), utilizando convenções como:
  - `|` para alternativas
  - `[ ... ]` para elementos opcionais
  - `{ ... }` para repetições (zero ou mais vezes)
  - Aspas duplas (`"..."`) para literais/terminais

### 2. Definição do Código a ser Gerado
Trecho válido em Go (uma declaração de variável curta com atribuição):
```go
total := 10 + 5
```

### 3. Seleção das Produções (Regras EBNF Extraídas da Spec)
Regras formais extraídas da especificação do Go necessárias para representar essa construção:
```ebnf
SimpleStmt     = ShortVarDecl .
ShortVarDecl   = IdentifierList ":=" ExpressionList .
IdentifierList = identifier { "," identifier } .
ExpressionList = Expression { "," Expression } .
Expression     = BinaryExpr | PrimaryExpr .
BinaryExpr     = Expression binary_op Expression .
binary_op      = "+" | "-" | "*" | "/" | ... .
PrimaryExpr    = Operand .
Operand        = Literal | OperandName .
OperandName    = identifier .
Literal        = BasicLit .
BasicLit       = int_lit .
```

**Significado das Regras:**
- **`ShortVarDecl`**: Define a atribuição curta (`:=`), mapeando identificadores à esquerda e expressões à direita.
- **`Expression` e `BinaryExpr`**: Regras recursivas que permitem compor operações aritméticas binárias a partir de operandos simples.
- **`Operand` / `BasicLit`**: Representam as unidades básicas de valor, como identificadores de variáveis e literais inteiros.

### 4. Realização da Derivação
Iniciando no símbolo de instrução (`SimpleStmt`) e aplicando sucessivamente as produções da mais à esquerda (*leftmost derivation*):

```text
SimpleStmt
=> ShortVarDecl
=> IdentifierList ":=" ExpressionList
=> identifier ":=" ExpressionList
=> "total" ":=" ExpressionList
=> "total" ":=" Expression
=> "total" ":=" BinaryExpr
=> "total" ":=" Expression binary_op Expression
=> "total" ":=" PrimaryExpr binary_op Expression
=> "total" ":=" Operand binary_op Expression
=> "total" ":=" Literal binary_op Expression
=> "total" ":=" BasicLit binary_op Expression
=> "total" ":=" int_lit binary_op Expression
=> "total" ":=" "10" binary_op Expression
=> "total" ":=" "10" "+" Expression
=> "total" ":=" "10" "+" PrimaryExpr
=> "total" ":=" "10" "+" Operand
=> "total" ":=" "10" "+" Literal
=> "total" ":=" "10" "+" BasicLit
=> "total" ":=" "10" "+" int_lit
=> "total" ":=" "10" "+" "5"
```

### 5. Apresentação do Resultado e Análise de Símbolos

**Código Final Gerado:**
```go
total := 10 + 5
```

**Classificação dos Símbolos:**
- **Símbolos Não Terminais:** `SimpleStmt`, `ShortVarDecl`, `IdentifierList`, `ExpressionList`, `Expression`, `BinaryExpr`, `binary_op`, `PrimaryExpr`, `Operand`, `OperandName`, `Literal`, `BasicLit`.
- **Símbolos Terminais (Tokens/Literais):** `:=`, `+`, `total` (token de identificador resolvido pelo analisador léxico), `10`, `5` (tokens numéricos inteiros).

**Explicação do Processo:**
A derivação parte da categoria sintática de instrução (`SimpleStmt`), que se desdobra em uma declaração curta (`ShortVarDecl`). A gramática exige um identificador à esquerda do operador terminal `:=` e uma lista de expressões à direita. A expressão do lado direito expande-se recursivamente através de `BinaryExpr`, permitindo decompor a soma nos operandos `10` e `5` unidos pelo operador terminal `+`. Ao final, todos os elementos não terminais são inteiramente substituídos por terminais válidos da linguagem Go.