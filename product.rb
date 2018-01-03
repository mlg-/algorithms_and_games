def product_1_to_n(n)
  result = 1
  range_array = (1..n).to_a
  range_array.each { |number| result = result * number }
  result
end