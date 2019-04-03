def add(number1, number2)
    number1 + number2
end

def subtract(number1, number2)
    number1 - number2
end

def sum(array)
    sum = 0
    array.each{|x| sum=sum + x}  
    return sum  
end

def multiply(number1, number2)
    number1 * number2
end

def power(number1, number2)
    number1 ** number2
end

def factorial(n)
    out = 1
    while n > 1
        out = out * n
        n -= 1
    end
    return out
end

  