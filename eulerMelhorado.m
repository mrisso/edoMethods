function [x, y] = eulerMelhorado (func, xi, yi, p, xf)
  
  x(1) = xi;
  y(1) = yi;
  delta = (xf - xi) / (p-1);
  
  for i =1: (p-1)
    y(i+1) = y(i) + 0.5*delta*( func(x(i),y(i)) + func(x(i)+delta, y(i)+delta*func(x(i),y(i))) );
    x(i+1) = x(i) + delta;
  end
  
end
