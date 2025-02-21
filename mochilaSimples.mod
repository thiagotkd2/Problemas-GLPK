# Variaveis de Decisao

param m, integer, >=0;
param w{i in 1..m}, integer, >=0;
param beneficio{i in 1..m}, integer, >=0;
param c, integer, >=0;

#variaveis
var x{i in 1..m}, binary, >=0;

# FO
maximize FO:sum{i in 1..m}x[i]*beneficio[i];

# Restricoes
s.t. R1:sum{i in 1..m} x[i]*w[i]<=c;


solve;

display FO, x;
