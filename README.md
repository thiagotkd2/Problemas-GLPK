# Resolução de problemas de Pesquisa Operacional usando GLPK

<h3>Problema 1:</h3>

Otimização do Aluguel de Barcos

![image](https://github.com/user-attachments/assets/d26e6220-001d-46f4-9347-49be8e24a9ca)

Ao executar glpsol em embaracoes1.dat(*valores na tabela*), é retornado:
<ul>
<li>FO.val = 680</li>
<li>x[1].val = 4</li>
<li>x[2].val = 4</li>
<li>x[3].val = 2</li>
</ul>

Essa saída representa o número de barcos alugados. No caso, são alugadas 4 Jangadas, 4 Supercanoas e 2 Arcas com cabine.

Também é possível ver o valor maximizado da função objetivo: (FO.val)=680.

<h4>Novas instâncias</h4>

Com a nova instancia (embaracoes.dat) é retornado: 

<ul>
<li>FO.val = 1050</li>
<li>x[1].val = 4</li>
<li>x[2].val = 0</li>
<li>x[3].val = 1</li>
<li>x[4].val = 5</li>
<li>x[5].val = 2</li>
</ul>

Que pode ser interpretado da mesma maneira que a saída anterior.

O que se observa nas duas saídas (embarcacoes.dat e embaracoes1.dat) é que ambas são limitadas pela quantidade de tripulantes e capitães. Isso é observado na medida que raramente todos os barcos de qualquer categoria estão completamente alocados, significando, portanto, que frequentemente há barcos não utilizados.

<h3>Problema 2:</h3>

Problema da mochila

![image](https://github.com/user-attachments/assets/ca4e1040-ea20-4456-b4cd-ea1fe84f0343)

<h4>mochilaSimples.dat(*valores na tabela*)</h4>
<ul>
<li>FO.val = 130</li>
<li>x[1].val = 0</li>
<li>x[2].val = 1</li>
<li>x[3].val = 1</li>
<li>x[4].val = 0</li>
<li>x[5].val = 0</li>
</ul>
<h4>mochilaSimples1.dat</h4>
<ul>
<li>FO.val = 294</li>
<li>x[1].val = 0</li>
<li>x[2].val = 1</li>
<li>x[3].val = 1</li>
<li>x[4].val = 0</li>
<li>x[5].val = 1</li>
<li>x[6].val = 0</li>
<li>x[7].val = 0</li>
<li>x[8].val = 1</li>
<li>x[9].val = 1</li>
<li>x[10].val = 1</li>
</ul>


