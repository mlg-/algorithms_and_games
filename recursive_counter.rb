def count(arr)
  if arr.empty?
    0
  else
    arr.pop
    1 + count(arr)
  end
end