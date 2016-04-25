function [x, y] = rungeKutta (func, xi, yi, p, xf)
	x(1) = xi;
	y(1) = yi;

	delta = (xf - xi) / (p -1);

	for i = 1: p-1
		k1 = delta * func(x(i),y(i));
		k2 = delta * func(x(i) + 0.5*delta, y(i) + 0.5*k1);
		k3 = delta * func(x(i) + delta, y(i) - k1 + 2*k2);
		y(i+1) = y(i) + (1/6)*(k1 + 4*k2 + k3);
		x(i+1) = x(i) + delta;
	end

end
