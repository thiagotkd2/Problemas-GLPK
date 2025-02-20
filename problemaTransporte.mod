# Declarando os conjuntos e parâmetros
param ori, integer, >=0; #origens
param des, integer, >=0; #destinos
param custos{i in 1..ori, j in 1..des} >= 0; #custos
param disp{i in 1..ori} >= 0; #capProducao
param necessidade{j in 1..des} >= 0; #demandasDestinos
#Variáveis
var x{i in 1..ori, j in 1..des}, integer, >= 0;

#MODELO
minimize FO: sum{i in 1..ori, j in 1..des}custos[i,j]*x[i,j];
s.t. cap{i in 1..ori}: sum{j in 1..des}x[i,j] <= disp[i];
s.t. demandas{j in 1..des}: sum{i in 1..ori}x[i,j] >= necessidade[j];

solve;

display FO, x;

data;

param ori := 3;
param des := 2;
param custos : 1 2 :=
         1 37 43 
         2 98 69
		 3 68 39
		 ;
		 
param disp := 1 1100, 2 1800, 3 500;
param necessidade := 1 2000, 2 1300;

