function [pop] = elitismo(pop)
	mfit = 0;
	pop(:, 38) = 0; %Flag ativo para seleção
	for i=1:30
		fit = pop(i, 37);
		if (fit > mfit)
			mfit = fit;
			individuo = i;
		end
	end
	for i = 1:30
		if (pop(i, 37) > (mfit-2))
			pop(i, 38) = 1;
		end
	end
	