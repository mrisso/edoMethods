function q = q2 (t)
	if (t>=0) && (t<30)
		q = 100;
	elseif (t>=30) && (t<40)
		q = 95;
	elseif (t>=40) && (t<70)
		q = 105;
	elseif (t>=70) && (t<=100)
		q = 85;
	else
		q = -1;
	end
end
