clear all;
clc;

f = @(x,y) 2*x*y;

x0 = 1;
y0 = 1;
p = 6;
xf = 1.5;

[x, y] = euler(f,x0,y0,p,xf);
[x, yM] = eulerMelhorado(f,x0,y0,p,xf);
[x, yMod] = eulerModificado(f,x0,y0,p,xf);
[x, yR] = rungeKutta(f,x0,y0,p,xf);

plot(x,exp(power(x,2)-1),x,yM,x,yMod,x,yR,x,y);
legend('Analitica','Euler Melhorado', 'Euler Modificado','Runge-Kutta 3ªO', 'Euler');
grid on;
