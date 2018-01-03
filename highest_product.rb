require "pry"

class HighestProduct
  def initialize(numbers:)
    @numbers = numbers
  end

# better solution, involving sorting

  def calculate
    raise InvalidNumberInputError if numbers.length < 2
    numbers.sort!.pop(2).reduce(&:*)
  end

# first solution, basically a greedy algo
  # def calculate
  #   highest_number = 0
  #   second_highest_number = 0

  #   numbers.each do |number|
  #     if number > highest_number
  #       second_highest_number = highest_number
  #       highest_number = number
  #     elsif number > second_highest_number
  #       second_highest_number = number
  #     end
  #   end

  #   highest_number * second_highest_number
  # end

  private
  attr_accessor :numbers
end

class InvalidNumberInputError < StandardError
end