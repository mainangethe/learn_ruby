#write your code here
def add number_1, number_2
  number_1 + number_2
end

def subtract number_1, number_2
  number_1 - number_2
end

def sum array
  array.reduce(0) { |sum, current_element| sum + current_element }
end

def multiply array
  array.reduce(1) { |final, current_element| final * current_element }
end

def power number, power
  number ** power
end

def factoral number
  if (number == 0 or number == 1)
    1
  else
    number * factoral(number-1)
  end

end
