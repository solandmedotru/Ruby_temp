def alphabetize(arr, rev=false)
  arr.sort!
  arr.reverse! if rev == true

  return arr
end
numbers = [5, 1, 3, 8]
puts alphabetize(numbers, true)
