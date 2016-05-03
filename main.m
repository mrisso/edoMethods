clear all;
clc;

% Definições f's:
f1 = @(x,y) 2*x*y;
a1 = @(x) exp(power(x,2)-1);

f2 = @(x,y) 4*power(x,2)/power(y,3);
a2 = @(x) power(((16*power(x,3)-13)/3),1/4);

x01 = 1;
y01 = 1;
p1 = 11;
xf1 = 5;

plotM(f1,a1,x01,y01,p1,xf1);
plotM(f2,a2,x01,y01,p1,xf1);

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

%Tabelas Solução
fprintf('%59s\n\n','==Resultados==');
fprintf('%15s | %15s | %15s | %15s | %15s | %15s\n','t', 'V-Vo', 'Afluente', 'Efluente', 'Vazamento', 'Ruído');
for i = 1: 128 fprintf('='); end; fprintf('\n');
for i = 1: length(t)
	fprintf('%15.2f | %15.2f | %15.2f | %15.2f | %15.2f | %15.2f\n', t(i), Y(i), Q1(i), Q2(i), Va(i), E(i));
end
