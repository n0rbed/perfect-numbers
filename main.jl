n = 1
while true
    factors = Vector{Any}()
    for i in 1:(n-1)
        div = n/i
        if isinteger(div)
            push!(factors, i)
        end
    end

    sum = 0
    for f in factors
        sum = sum + f
    end
    if sum == n
        println(n, " is a perfect number")
    end
    global n += 1
end

