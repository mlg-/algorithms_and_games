def quicksort(arr)
  if arr.length < 2
    arr
  else
    pivot = arr.pop
    lower_arr = []
    higher_arr = []

    arr.each { |item| lower_arr << item if item <= pivot }
    arr.each { |item| higher_arr << item if item > pivot }

    quicksort(lower_arr) + [pivot] + quicksort(higher_arr)
  end
end