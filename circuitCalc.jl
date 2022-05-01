function pRes(resCount)

	x = 0
	if resCount == 0
		resCount = 2
	end

	for i = 1:resCount
		print("Input resistance(in form of integers only) of R$i: ")
		input = parse(Float64, readline())
		if mod(input, floor(input)) == 0
			x += 1//convert(Int, input)
		else
			x += 1/input
		end
	end

	inverse = x^-1

	if typeof(inverse) == Rational && mod(numerator(inverse),denominator(inverse)) == 0
		result = convert(Int, inverse)
	else
		result = inverse
	end

	return result
end

function cDiv(R1,R2,i)
	currentR1 = i * R2 / (R1 + R2)
	currentR2 = i * R1 / (R1 + R2)

	print("Current for R1, R2: ")

	return currentR1, currentR2
end

function vDiv(R1,R2,v)
	voltageR1 = v * R1 / (R1 + R2)
	voltageR2 = v * R2 / (R1 + R2)

	print("Voltage for R1, R2: ")

	return voltageR1, voltageR2
end
