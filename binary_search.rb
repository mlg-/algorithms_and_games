def binary_search(arr, number_to_find)
  if arr.length == 0
    "Number not found"
  elsif arr.length == 1
    arr.first == number_to_find ? arr.first : "number not found"
  else
    mid = arr.length / 2
    return arr[mid] if arr[mid] == number_to_find

    if arr[mid] > number_to_find
      binary_search(arr[0..mid], number_to_find)
    else
      binary_search(arr[mid..arr.last], number_to_find)
    end
  end
end