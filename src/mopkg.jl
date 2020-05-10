module mopkg

"Divide by half method implementation finds local minimum for single variable functions"
function divByHalf(f, a, b, err = 1e-5, maxiter = 10000)
	middle = (a+b)/2
	diff = b - a
	iter= 0

	if(a >= b)
		print("a parameter must be smaller than b parameter")
		return
	end

	while(abs(diff) >= err)
		iter += 1
		left = a + diff/4
		right = b - diff/4
		if(f(left) < f(middle))
			b = middle
			middle = left
		elseif(f(right) < f(middle))
			a = middle
			middle = right
		else
			a = left
			b = right
		end
		diff = b - a
		if(iter > maxiter)
			print("Max iterations exceeded")
			return
		end
	end
	return (middle, iter) end

	export divByHalf


end # module
