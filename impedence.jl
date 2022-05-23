function impedence(f,R,C,L)
	omega = 2pi * f
	if C != 0
		return R + (omega * L - 1/(omega * C))im
	else
		return R + omega * L * im
	end
end
