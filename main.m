clear all;
clc;

% Definições f's:
f1 = @(x,y) 2*x*y;
a1 = @(x) exp(power(x,2)-1);

x01 = 1;
y01 = 1;
p1 = 6;
xf1 = 1.5;

plotM(f1,a1,x01,y01,p1,xf1);

FV = @(x,y) fv(x);

[t, Y] = euler(FV,0,500,101,100);
for i = 0: 100
	Q1(i+1) = q1(i);
	Q2(i+1) = q2(i);
	Va(i+1) = v(i);
	E(i+1) = e;
end

figure('name','Grafico Solução');
plot(t,Y,t,Q1,t,Q2,t,Va,t,E);
grid on;
legend('V-Vo','Afluente','Efluente','Vazamento','Ruído');
