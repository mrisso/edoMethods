function err = errors (yA,x,y)
	for i = 1: length(y)
		err(i) = abs(yA(x(i))-y(i));
	end
end
