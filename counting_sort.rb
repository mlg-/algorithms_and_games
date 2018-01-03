class CountingSort
  def initialize(list:)
    @list = list

    @appearances_per_number = set_up_appearances_counter
  end

  def sort
    count_appearances

    sorted_array
  end

  private
  attr_accessor :list, :appearances_per_number

  def set_up_appearances_counter
    appearances_per_number = {}
    100.times { |n| appearances_per_number[n] = 0 }

    appearances_per_number
  end

  def count_appearances
    list.each { |number| appearances_per_number[number] += 1 }

    appearances_per_number
  end

  def sorted_array
    final_sorted_list = appearances_per_number.each_with_object([]) do |(number, appearances), sorted_array|
      appearances.times { sorted_array << number }
    end
    final_sorted_list
  end
end