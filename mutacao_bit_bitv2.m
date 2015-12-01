function [pop] = mutacao_bit_bit(pop, tamanho, prob_mutacao)
%prob_mutacao = 0.025;
%prob_mutacao = 0.05; 
%prob_mutacao = 0.1;
%prob_mutacao = 0.25
%prob_mutacao = 0.75
n_col = size(pop,2)-2;
%n = ceil(n); %arrendonda o valor para cima
for i = 1: tamanho
	for(j = 1:n_col)
		%posicao = randi(36,1,1); %rand de 1 a 36
		mutacao = rand;
		if (mutacao < prob_mutacao)
			if(pop(i, j) == 0)
				pop(i, j) = 1;
			else
				pop(i, j) = 0;
			end
		end
	end
end
