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
