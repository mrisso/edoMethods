function plotM (f,a,x0,y0,p,xf)
	[x, y] = euler(f,x0,y0,p,xf);
	[x, yM] = eulerMelhorado(f,x0,y0,p,xf);
	[x, yMod] = eulerModificado(f,x0,y0,p,xf);
	[x, yR] = rungeKutta(f,x0,y0,p,xf);
	[x, yDP] = dormandPrince(f,x0,y0,p,xf);

	xA = x0:0.1:xf;

	plot(x,a(xA),x,yDP,x,yM,x,yMod,x,yR,x,y);
	legend('Analitica', 'Dormand-Prince', 'Euler Melhorado', 'Euler Modificado', 'Runge-Kutta 3ªO', 'Euler');
	grid on;
end
