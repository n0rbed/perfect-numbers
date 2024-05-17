function check_perfect(n)
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
end

function get_input(prompt)
    local x = nothing
    while isnothing(x)
        print(prompt)
        try
            str = readline()
            x = parse(Int, str)
        catch e
            if isa(e, ArgumentError)
                println(str, " is not a valid integer")
            end
        end
        if x < 1
            x = nothing
            println("N should be positive")
        end
    end
    return x
end

n = nothing
while isnothing(n)
    global n = get_input("Enter 1 for generation, and 2 for checking if a specific number is perfect: ")
    if n != 1 && n !=2
        println(n, " is not a valid option")
        global n = nothing
    end
end

if n == 1
    global n = get_input("What n should we start counting from? ")
    while true
        check_perfect(n)
        global n = n + 1
    end
elseif n == 2
    global n = get_input("What integer should we check? ")
    check_perfect(n)
end



