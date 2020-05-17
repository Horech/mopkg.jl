module mopkg1


function find_min_interval(f, x0; step=1, expandfactor=2.0)
    a, b = x0, x0 + step
    fa, fb = f(a), f(b)
    if fb > fa
        a, b = b, a
        fa, fb = fb, fa
        step = -step
    end
    while true
        c, fc = b + step, f(b + step)
        if fc > fb
            return a < c ? (a, c) : (c, a)
        end
        a, b = b, c
        fa, fb = fb, fc
        step = step*expandfactor
    end
end



"Divide by half method implementation finds local minimum for single variable functions"
function divByHalf(f, x0, err = 1e-5, maxiter = 10000)
	a, b = find_min_interval(f, x0)
	middle = (a+b)/2
	diff = b - a
	iter= 0

	while(abs(diff) >= err && iter < maxiter)
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
	end
	return (f(middle), middle) end

	export divByHalf, find_min_interval


end # module
