def fib(n)
    array = []
    n.times.with_index do |i|
        if i == 0 
            array << 0
        elsif i == 1
            array << 1
        else
            array << array[i-1] + array[i-2]
        end
    end
    array
end

def fib_rec(n, array=[0, 1])
    if n == 1
        return 0
    elsif n == 2
        return array
    else
        array << array[-1] + array[-2]
        fib_rec(n-1, array)
    end
end

p fib(10)
p fib_rec(10)