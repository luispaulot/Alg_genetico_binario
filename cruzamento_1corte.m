function [filho1, filho2] = cruzamento_1corte(pais, n_pais, n_col)
	total_fit = sum(pais(:, 37));
	percentual = rand(n_pais, 1);
	percentual(1) = pais(1, 37)/total_fit;
	for i=2:n_pais
		percentual(i) = (pais(i, 37)/total_fit)+percentual(i-1);
	end
	r = rand;
	for j = 1:n_pais
		if (r < percentual(1))
			pai1 = j;
		elseif (r > percentual(j))
			pai1 = j;
		end
	end
	r = rand;
	for j = 1:n_pais
		if (r < percentual(1))
			pai2 = j;
		elseif (r > percentual(j))
			pai2 = j;
		end
	end
	
	%cruzamento 1 ponto de corte
	verificador = rand;
	filho1 = rand(1,38);
	filho2 = rand(1,38);
	if verificador < .5
		filho1(1, 1:25) = pais(pai2, 1:25);       %parte de 1 a 25 recebe pai 2
		filho1(1, 26:36) = pais(pai1, 26:36);       %parte de 25 36 recebe pai 1
		filho2(1, 1:25) = pais(pai1, 1:25);       %parte de 1 a 25 recebe pai 2
		filho2(1, 26:36) = pais(pai2, 26:36);       %parte de 25 36 recebe pai 1
	else
		filho2(1, 1:25) = pais(pai2, 1:25);       %parte de 1 a 25 recebe pai 2
		filho2(1, 26:36) = pais(pai1, 26:36);       %parte de 25 36 recebe pai 1
		filho1(1, 1:25) = pais(pai1, 1:25);       %parte de 1 a 25 recebe pai 2
		filho1(1, 26:36) = pais(pai2, 26:36);       %parte de 25 36 recebe pai 1
	end