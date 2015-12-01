function[pop] = fitnes(pop, tamanho)
	for i=1:tamanho
		fit=9+pop(i,2)*pop(i,5)-pop(i,23)*pop(i,14)+pop(i,24)*pop(i,4)-pop(i,21)*pop(i,10)+pop(i,36)*pop(i,15)-pop(i,11)*pop(i,26)+pop(i,16)*pop(i,17)+pop(i,3)*pop(i,33)+pop(i,28)*pop(i,19)+pop(i,12)*pop(i,34)-pop(i,31)*pop(i,32)-pop(i,22)*pop(i,25)+pop(i,35)*pop(i,27)-pop(i,29)*pop(i,7)+pop(i,8)*pop(i,13)-pop(i,6)*pop(i,9)+pop(i,18)*pop(i,20)-pop(i,1)*pop(i,30)+pop(i,23)*pop(i,4)+pop(i,21)*pop(i,15)+pop(i,26)*pop(i,16)+pop(i,31)*pop(i,12)+pop(i,25)*pop(i,19)+pop(i,7)*pop(i,8)+pop(i,9)*pop(i,18)+pop(i,1)*pop(i,33);
		pop(i,37)=fit;
	end