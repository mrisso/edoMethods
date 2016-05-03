function plotM (f,a,x0,y0,p,xf)

	%Métodos
	[x, y] = euler(f,x0,y0,p,xf);
	[x, yM] = eulerMelhorado(f,x0,y0,p,xf);
	[x, yMod] = eulerModificado(f,x0,y0,p,xf);
	[x, yR] = rungeKutta(f,x0,y0,p,xf);
	[x, yDP] = dormandPrince(f,x0,y0,p,xf);

	%Passos da Função Analítica
	xA = x0:0.1:xf;

	%Plot Funções
	figure('name','Grafico Comparativo');
	plot(x,a(xA),x,yDP,x,yM,x,yMod,x,yR,x,y);
	legend('Analitica', 'Dormand-Prince', 'Euler Melhorado', 'Euler Modificado', 'Runge-Kutta 3ªO', 'Euler');
	grid on;

	%Erros
	eE = errors(a,x,y);
	eM = errors(a,x,yM);
	eMod = errors(a,x,yMod);
	eR = errors(a,x,yR);
	eDP = errors(a,x,yDP);

	%Tabelas
	fprintf('%59s\n\n','==Resultados==');
	fprintf('%15s | %15s | %15s | %15s | %15s | %15s | %15s\n', 'x', 'Analitica', 'Euler', 'Euler Melhorado', 'Euler Modificado', 'Runge-Kutta', 'Dormand-Prince');
	for i = 1: 128 fprintf('='); end; fprintf('\n');
	for i = 1: length(x)
		fprintf('%15.2f | %15.2f | %15.2f | %15.2f | %15.2f | %15.2f | %15.2f\n', x(i), a(x(i)), y(i), yM(i), yMod(i), yR(i), yDP(i));
	end

	fprintf('\n\n\n');
	fprintf('%59s\n\n','==Erros==');
	fprintf('%15s | %15s | %15s | %15s | %15s | %15s\n', 'x', 'Euler', 'Euler Melhorado', 'Euler Modificado', 'Runge-Kutta', 'Dormand-Prince');
	for i = 1: 128 fprintf('='); end; fprintf('\n');
	for i = 1: length(x)
		fprintf('%15.2f | %15.2f | %15.2f | %15.2f | %15.2f | %15.2f\n', x(i), eE(i), eM(i), eMod(i), eR(i), eDP(i));
	end

end
