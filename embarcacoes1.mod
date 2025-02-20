# Declarando os conjuntos e parâmetros

param barcos, integer, >=0;
param tipoTripulante, integer, >=0;
param custos{i in 1..barcos}, integer,>=0;
param frota{i in 1..barcos}, integer, >=0;
param equipe{i in 1..tipoTripulante}, integer, >=0;
param necessidade{i in 1..barcos, j in 1..barcos}, integer, >=0;

# Variaveis
var x{i in 1..barcos}, integer,  >=0; # considere x como o numero x[i] de embarcacoes

# Modelo
maximize FO: sum{i in 1..barcos}custos[i]*x[i];
s.t. R1{j in 1..tipoTripulante}:
	sum{i in 1..barcos} x[i]*necessidade[i,j]<= equipe[j];
s.t. R2{i in 1..barcos}: x[i]<=frota[i];

solve;

display FO, x;
