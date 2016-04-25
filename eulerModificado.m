function [x, y] = eulerModificado (func, xi, yi, p, xf)
  
  x(1) = xi;
  y(1) = yi;
  delta = (xf - xi) / (p-1);
  newDelta = delta/2.0;
  
  for i =1: (p-1)
    y(i+1) = y(i) + delta*( func(x(i)+newDelta, y(i)+newDelta*func(x(i),y(i))) );
    x(i+1) = x(i) + delta;
  end
  
endfunction