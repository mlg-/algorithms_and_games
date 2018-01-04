def sum(arr)
  if arr.length == 0
    0
  else
    arr.pop + sum(arr)
  end
end