function q = q1 (t)
	if (t>=0) && (t<20)
		q = 110;
	elseif (t>=20) && (t<40)
		q = 100;
	elseif (t>=40) && (t<80)
		q = 95;
	elseif (t>=80) && (t<=100)
		q = 100;
	else
		q = -1;
	end
end
