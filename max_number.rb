def find_max_number(list, max_number = 0)
  return 0 if list.length == 0

  current_number = list.pop
  max_number = current_number if current_number > max_number

  if list.length == 1
    current_number
  else
    find_max_number(list, max_number)
  end
end