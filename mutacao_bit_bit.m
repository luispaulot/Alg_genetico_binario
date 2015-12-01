function [pop] = mutacao_bit_bit(pop, tamanho)
prob_mutacao = 0.75;
n = size(pop)*prob_mutacao;
n = ceil(n); %arrendonda o valor para cima
for j = 1: tamanho
	for(i = 1:n)
		posicao = randi(36,1,1); %rand de 1 a 36
		if pop(j, posicao) == 1
			pop(j, posicao) = 0;
		else
			pop(j, posicao) = 1;
		end	
	end
end
