function[pop] = roleta(pop, tamanho)
	pop(:, 38) = 0; %Flag ativo para seleção
	total_fit = sum(pop(:, 37));
	percentual = rand(tamanho, 1);
	percentual(1) = pop(1, 37)/total_fit;
	for i=2:tamanho
		percentual(i) = (pop(i, 37)/total_fit)+percentual(i-1);
	end
	for i = 1:tamanho
		r = rand;
		for j = 1:tamanho
			if (r < percentual(1))
				individuo = j;
			elseif (r > percentual(j))
				individuo  = j;
			end
		end
		pop(individuo, 38) = 1;
	end