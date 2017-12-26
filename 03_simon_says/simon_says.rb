#write your code here
def echo(s)
  return s
end

def shout(s)
  return s.upcase
end

def repeat(s, num = 2)
  result = ""
  num.times { |x| result = result + " " + s }
  return result.strip
end

def start_of_word(s, n = 1)
  return s[0, n]
end

def first_word(s)
  return s.split(" ").first
end

def titleize(s)
  little = ["and", "or", "over", "in", "on", "the", "a", "an", "it", "do", "is"]
  array = s.split(" ").map do |x|
    if little.include?(x)
      x
    else
      x.capitalize
    end
  end
  array.first.capitalize!
  return array.join(" ")
end
