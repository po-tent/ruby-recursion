def fibs(n)
  array = []
  0.upto(n) do |i|
    if i == 0
      array << 0
    elsif i == 1
      array << 1
    else 
      fib = array[i - 1] + array[i - 2]
      array << fib
    end
  end
  array
end

# def fibs(n)
#   (2..n).reduce([0, 1]) do |array, i|
#     array.push(array[i - 1] + array[i - 2])
#   end
# end

def fibs_rec(n)
  # base cases 0 and 1
  return [0] if n == 0
  return [0, 1] if n == 1

  array = fibs_rec(n - 1)
  # add the last two to form new elements
  array << array[-2] + array[-1]
end

p fibs(10)
p fibs_rec(10)
