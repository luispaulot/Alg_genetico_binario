function [pop] = torneio(pop)
	N = 30;
	K = 0.75;
	pop(:, 38) = 0; %Flag ativo para seleção
	for i = 1: N
		in = 0;
		while(in == 0)
			individuo1 = randi(30,1,1); %rand de 1 a 30
			individuo2 = randi(30,1,1); %rand de 1 a 30
			if ((pop(individuo1, 38) == 0) && (pop(individuo2, 38) == 0))
				in = 1;
			end
		end
		fit1 = pop(individuo1, 37);
		fit2 = pop(individuo2, 37);
		if fit1 > fit2
			melhor = individuo1;
			pior = individuo2;
		else
			melhor = individuo2;
			pior = individuo1;
		end
		r = rand;  %rand entre 0 e 1
		if r < K
			pop(melhor, 38) = 1;
		else
			pop(pior, 38) = 1;
		end
	end
		
		