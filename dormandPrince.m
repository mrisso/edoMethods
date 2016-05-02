function [x, y] = dormandPrince (func, xi, yi, p, xf)
	x(1) = xi;
	y(1) = yi;

	delta = (xf - xi) / (p - 1);

	%Coeficientes
	a21 = 1/5;
	a31 = 3/40; a32 = 9/40;
	a41 = 44/45; a42 = -56/15; a43 = 32/9;
	a51 = 19372/6561; a52 = -25360/2187; a53 = 64448/6561; a54 = -212/729;
	a61 = 9017/3168; a62 = -355/33; a63 = 46732/5247; a64 = 49/176; a65 = -5103/18656;
	a71 = 35/384; a72 = 0; a73 = 500/1113; a74 = 125/192; a75 = -2187/6784; a76 = 11/84;

	c2 = 1/5; c3 = 3/10; c4 = 4/5; c5 = 8/9; c6 = 1; c7 = 1;

	for i = 1: p-1
		X = x(i);
		Y = y(i);
		k1 = delta * func(X,Y);
		X = x(i) + c2 * delta; Y = y(i) + a21 * k1;
		k2 = delta * func(X,Y);
		X = x(i) + c3 * delta; Y = y(i) + a31 * k1 + a32 * k2;
		k3 = delta * func(X,Y);
		X = x(i) + c4 * delta; Y = y(i) + a41 * k1 + a42 * k2 + a43 * k3;
		k4 = delta * func(X,Y);
		X = x(i) + c5 * delta; Y = y(i) + a51 * k1 + a52 * k2 + a53 * k3 + a54 * k4;
		k5 = delta * func(X,Y);
		X = x(i) + c6 * delta; Y = y(i) + a61 * k1 + a62 * k2 + a63 * k3 + a64 * k4 + a65 * k5;
		k6 = delta * func(X,Y);
		X = x(i) + c7 * delta; Y = y(i) + a71 * k1 + a73 * k3 + a74 * k4 + a75 * k5 + a76 * k6;
		x(i+1) = X;
		y(i+1) = Y;
	end

end
