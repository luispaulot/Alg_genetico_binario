tamanho = 30;		  %tamanho da população
prob_cruzamento = .5; %variável para quardar A PROBABILIDADE de cruzamento
prob_mutacao = 0.025;
geracoes = 1;		  %controle	
maior = 0;			  %controle
pop = generico(tamanho);   %Gera a população inicial
pop = fitness(pop, tamanho);     %Calcula o fitness de todos os indivíduos
sucessos = 0;         %controle     
maior_resultado = 0;
menor_resultado = 0;
for c = 1 :100
	geracoes = 1;
	pop = pop;
	pop = fitness(pop, tamanho);
	while geracoes < 50
		pop = elitismo(pop);
		%pop = roleta_v2(pop, tamanho);
		%pop = torneio(pop);
		pop = pre_cruzamento(pop, prob_cruzamento);
		pop = mutacao_bit_bitv2(pop, tamanho, prob_mutacao);
		%pop = mutacao_bit_bitv2(pop, tamanho);
		pop = fitness(pop, tamanho);
		geracoes = geracoes +1; 	
		maior = 0;
		for i = 1:tamanho
			if (pop(i, 37) > maior)
				maior = pop(i, 37);
			end
		end
		resultados(geracoes) = maior;
		%maior
		%plot(1:30, pop(cont, 37), 'o')
	end
	plot(resultados)
	melhor = max(resultados);
	if (melhor == 27)
		sucessos = sucessos+1;
	end
	menor = min(resultados(2:50));
	media_parcial = sum(resultados)/tamanho;
	media(c) = media_parcial;
	maiores(c) = melhor;
	menores(c) = menor;
end
sucessos
maior_resultado = max(maiores)
menor_resultado = min(maiores)
media_total = mean(maiores)
desvio_padrao = std(maiores)
%boxplot(maiores)
pause
%plot(maiores);

