#write your code here
def add(a, b)
  return a + b
end

def subtract(a, b)
  return a -b
end

def sum(arr)
  result = 0
  arr.each { |x| result += x }
  return result
end

def multiply(a, b = 0)
  if a.kind_of?(Integer) && b.kind_of?(Integer)
    return a * b
  end
  if a.kind_of?(Array)
    result = 1
    a.each { |x| result *= x }
    return result
  end
end

def power(a, b)
  result = 1
  b.times { result *= a }
  return result
end

def factorial(n)
  if n <= 1
    return 1
  else
    return n * factorial(n - 1)
  end
end
