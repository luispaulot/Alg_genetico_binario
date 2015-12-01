tamanho = 30;
geracoes = 1;
maior = 0;
pop = generico(tamanho);
pop = fitness(pop, tamanho);
while geracoes < 50
	pop = torneio(pop);
	pop = pre_cruzamento(pop);
	pop = mutacao_bit_bitv2(pop, tamanho);
	pop = fitness(pop, tamanho);
	geracoes = geracoes +1 	
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
media = sum(resultados)/tamanho
plot(resultados)