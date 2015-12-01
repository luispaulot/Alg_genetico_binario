function [pop] = mutacao_bit_rand(pop, tamanho, prob_mutacao)
	%prob_mutacao = 0.025;
	%prob_mutacao = 0.05; 
	%prob_mutacao = 0.1;
	%prob_mutacao = 0.25
	%prob_mutacao = 0.75

	n = size(pop,1);				%mede o numero de indivíduos da população
	n_col = size(pop,2);			%mede o numero de colunas da população

	Total_posicoes= n*(n_col-2);
	Taxa_mutacao = Total_posicoes*prob_mutacao;
	Taxa_mutacao = ceil(Taxa_mutacao); 

	for i=1:Taxa_mutacao
		posicao = randi(Total_posicoes,1,1); %rand de 1 a Taxa_mutacao
		if (pop(posicao) == 1)
			pop(posicao) = 0;
		elseif(pop(posicao) == 0)
			pop(posicao) = 1;
		end
	end		
			
			